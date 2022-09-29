import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'auth/firebase_user_provider.dart';
import 'auth/auth_util.dart';

import 'backend/schema/meditation_record.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'index.dart';

import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'components/common.dart';
import 'package:rxdart/rxdart.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FlutterFlowTheme.initialize();

  FFAppState(); // Initialize FFAppState
  await JustAudioBackground.init(
    androidNotificationChannelId: 'com.ryanheise.bg_demo.channel.audio',
    androidNotificationChannelName: 'Drimly',
    androidNotificationOngoing: true,
  );

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  ThemeMode _themeMode = ThemeMode.light;

  late Stream<DrimlyFirebaseUser> userStream;
  DrimlyFirebaseUser? initialUser;
  bool displaySplashImage = true;

  final authUserSub = authenticatedUserStream.listen((_) {});

  @override
  void initState() {
    super.initState();
    userStream = drimlyFirebaseUserStream()
      ..listen((user) => initialUser ?? setState(() => initialUser = user));
    Future.delayed(
      Duration(seconds: 1),
      () => setState(() => displaySplashImage = false),
    );
    initAudioPlayer();
  }

  void initAudioPlayer() async {
    final session = await AudioSession.instance;
    await session.configure(AudioSessionConfiguration.music());
  }

  @override
  void dispose() {
    authUserSub.cancel();

    super.dispose();
  }

  void setLocale(Locale value) => setState(() => _locale = Locale('ru', ''));

  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = ThemeMode.light;
        FlutterFlowTheme.saveThemeMode(_themeMode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: (context, child) => ResponsiveWrapper.builder(
      //   child,
      //   maxWidth: 1200,
      //   minWidth: 480,
      //   defaultScale: true,
      //   breakpoints: [
      //     ResponsiveBreakpoint.resize(480, name: MOBILE),
      //     ResponsiveBreakpoint.autoScale(800, name: TABLET),
      //     ResponsiveBreakpoint.resize(1000, name: DESKTOP),
      //   ],
      // ),
      title: 'Drimly',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('ru', ''),
        Locale('en', ''),
      ],
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.light),
      themeMode: _themeMode,
      home: initialUser == null || displaySplashImage
          ? Center(
              child: SizedBox(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(
                  color: FlutterFlowTheme.of(context).primaryColor,
                ),
              ),
            )
          : currentUser!.loggedIn
              ? NavBarPage()
              : SignUpWidget(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key? key, this.initialPage, this.meditationRecord})
      : super(key: key);

  final String? initialPage;
  final MeditationRecord? meditationRecord;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'Meditation';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'Meditation': MeditationWidget(),
      'Sound': SoundWidget(),
      'Practice': PracticeWidget(),
      'Profile': ProfileWidget(),
      // 'MeditationList': MeditationListWidget(
      //   meditation: widget.meditationRecord,
      // ),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPage);
    return Scaffold(
      body: tabs[_currentPage],
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        backgroundColor: Color(0xFF121129),
        selectedItemColor: Color(0xFFEE3957),
        unselectedItemColor: Color(0xFF565A7D),
        selectedBackgroundColor: Color(0x00000000),
        borderRadius: 100,
        itemBorderRadius: 8,
        margin: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
        padding: EdgeInsetsDirectional.fromSTEB(10, 11, 10, 11),
        width: double.infinity,
        elevation: 0,
        items: [
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Container(
                    width: 26,
                    height: 26,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15,
                          color: currentIndex == 0 || currentIndex == 4
                              ? Color.fromARGB(255, 238, 57, 87)
                              : Color.fromARGB(0, 204, 138, 254),
                          offset: Offset(0, 4),
                        )
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          currentIndex == 0 || currentIndex == 4
                              ? 'assets/images/meditation_fill.png'
                              : 'assets/images/meditation_unfill.png',
                        ).image,
                      ),
                    ),
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    '0gymdr5m' /* Медитация */,
                  ),
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: currentIndex == 0 ? Colors.white : Color(0xFF565A7D),
                    fontSize: 11.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15,
                          color: currentIndex == 1
                              ? Color.fromARGB(255, 238, 57, 87)
                              : Color.fromARGB(0, 204, 138, 254),
                          offset: Offset(0, 4),
                        )
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          currentIndex == 1
                              ? 'assets/images/music_fill.png'
                              : 'assets/images/music_unfill.png',
                        ).image,
                      ),
                    ),
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'd8s51ob6' /* Звуки */,
                  ),
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: currentIndex == 1 ? Colors.white : Color(0xFF565A7D),
                    fontSize: 11.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15,
                          color: currentIndex == 2
                              ? Color.fromARGB(255, 238, 57, 87)
                              : Color.fromARGB(0, 204, 138, 254),
                          offset: Offset(0, 4),
                        )
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          currentIndex == 2
                              ? 'assets/images/practice_fill.png'
                              : 'assets/images/practice_unfill.png',
                        ).image,
                      ),
                    ),
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    '77l0vuay' /* Практики */,
                  ),
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: currentIndex == 2 ? Colors.white : Color(0xFF565A7D),
                    fontSize: 11.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Container(
                    width: 23,
                    height: 22,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15,
                          color: currentIndex == 3
                              ? Color.fromARGB(255, 238, 57, 87)
                              : Color.fromARGB(0, 204, 138, 254),
                          offset: Offset(0, 4),
                        )
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          currentIndex == 3
                              ? 'assets/images/user_fill.png'
                              : 'assets/images/user_unfill.png',
                        ).image,
                      ),
                    ),
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    '7lefkiyy' /* Профиль */,
                  ),
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: currentIndex == 3 ? Colors.white : Color(0xFF565A7D),
                    fontSize: 11.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
