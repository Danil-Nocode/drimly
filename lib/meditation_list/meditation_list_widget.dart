import 'package:cached_network_image/cached_network_image.dart';
import 'package:just_audio/just_audio.dart';

import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import '../meditation_page/meditation_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MeditationListWidget extends StatefulWidget {
  const MeditationListWidget({
    Key? key,
    this.meditation,
  }) : super(key: key);

  final MeditationRecord? meditation;

  @override
  _MeditationListWidgetState createState() => _MeditationListWidgetState();
}

class _MeditationListWidgetState extends State<MeditationListWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/Group 186.png',
              ).image,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(26, 60, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.chevron_left_rounded,
                        size: 36.0,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 140,
                      height: 53,
                      decoration: BoxDecoration(
                        color: Color(0xFF020925),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(100),
                          topRight: Radius.circular(0),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        NavBarPage(initialPage: 'Profile'),
                                  ),
                                );
                              },
                              child: Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  color: Color(0xFF33325C),
                                  shape: BoxShape.circle,
                                ),
                                alignment: AlignmentDirectional(0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: currentUserDocument!.photoUrl == ''
                                      ? Image.asset(
                                          'assets/images/user-profile-svgrepo-com_2-2.png',
                                          width: 48,
                                          height: 64,
                                          fit: BoxFit.contain,
                                        )
                                      : Image.network(
                                          currentUserDocument!.photoUrl!,
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AuthUserStreamWidget(
                                  child: Text(
                                    currentUserDisplayName,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'montserrat',
                                          color: Colors.white,
                                          fontSize: 10,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 3, 0, 0),
                                  child: Container(
                                    width: 32,
                                    height: 12,
                                    decoration: BoxDecoration(
                                      color: Color(0xAB496076),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 2, 0),
                                          child: Image.asset(
                                            'assets/images/Group-4.png',
                                            width: 6,
                                            height: 6,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'tn3fbewy' /* 5.0 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'montserrat',
                                                color: Colors.white,
                                                fontSize: 8,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 80, 40, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          widget.meditation!.title!,
                          maxLines: 2,
                          overflow: TextOverflow.clip,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'montserrat',
                                    color: Colors.white,
                                    fontSize: 22,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 20, 24, 4),
                  child: Builder(
                    builder: (context) {
                      var audio = widget.meditation!.audios!.toList();
                      if (currentUserDocument!.status!.toLowerCase() ==
                              'free' ||
                          (currentUserDocument!.status!.toLowerCase() ==
                                  'start' &&
                              widget.meditation!.title != '3 кита')) {
                        audio = [audio[0]];
                      }

                      if (currentUserDocument!.status!.toLowerCase() ==
                              'start' &&
                          widget.meditation!.title == '3 кита') {
                        audio = [audio[0], audio[1], audio[2]];
                      } else if (currentUserDocument!.status!.toLowerCase() !=
                              'start' &&
                          widget.meditation!.title == '3 кита') {
                        audio = [audio[0]];
                      }

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        itemCount: audio.length,
                        itemBuilder: (context, audioIndex) {
                          final audioItem = audio[audioIndex];
                          return Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 11),
                            child: StreamBuilder<AudiosRecord>(
                              stream: AudiosRecord.getDocument(audioItem),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                final containerAudiosRecord = snapshot.data!;

                                return InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            MeditationPageWidget(
                                          audio:
                                              containerAudiosRecord.reference,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 100,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF33325C),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(25),
                                            bottomRight: Radius.circular(0),
                                            topLeft: Radius.circular(25),
                                            topRight: Radius.circular(0),
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl: containerAudiosRecord
                                                        .coverMini! ==
                                                    ''
                                                ? containerAudiosRecord.cover!
                                                : containerAudiosRecord
                                                    .coverMini!,
                                            width: 111,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 18, 4),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          containerAudiosRecord
                                                              .title!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'montserrat',
                                                                color: Colors
                                                                    .white,
                                                                useGoogleFonts:
                                                                    false,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5, 0, 0, 0),
                                                        child: Container(
                                                          width: 30,
                                                          height: 30,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x82C4C4C4),
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                          child: Stack(
                                                            children: [
                                                              if ((currentUserDocument
                                                                          ?.listenAudio
                                                                          ?.toList() ??
                                                                      [])
                                                                  .contains(
                                                                      containerAudiosRecord
                                                                          .reference))
                                                                AuthUserStreamWidget(
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/Vector-2.png',
                                                                    width: 11,
                                                                    height: 16,
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                ),
                                                              if (!(currentUserDocument
                                                                          ?.listenAudio
                                                                          ?.toList() ??
                                                                      [])
                                                                  .contains(
                                                                      containerAudiosRecord
                                                                          .reference))
                                                                AuthUserStreamWidget(
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/Vector.png',
                                                                    width: 11,
                                                                    height: 16,
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Text(
                                                  '${containerAudiosRecord.minute} минут',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'montserrat',
                                                        fontSize: 12,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
