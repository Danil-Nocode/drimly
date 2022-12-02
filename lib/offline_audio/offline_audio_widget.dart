import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import '../components/audio_service.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OfflineAudioWidget extends StatefulWidget {
  const OfflineAudioWidget({Key? key}) : super(key: key);

  @override
  _OfflineAudioWidgetState createState() => _OfflineAudioWidgetState();
}

class _OfflineAudioWidgetState extends State<OfflineAudioWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String? currentFile = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              alignment: AlignmentDirectional(0, 0),
              children: [
                Image.asset(
                  'assets/images/Rectangle_209-3.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(11, 0, 0, 0),
                      child: Text(
                        'Сохраненные аудио',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'montserrat',
                              color: Color(0xFFBCBCBC),
                              fontSize: 16,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.chevron_left,
                        color: Color(0xFFC4C4C4),
                        size: 30,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Builder(
                  builder: (context) {
                    final file = FFAppState().cacheAudios.toList();
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: file.length,
                      itemBuilder: (context, fileIndex) {
                        final fileItem = file[fileIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFF6EF),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        InkWell(
                                          onTap: () async {
                                            var fetchedFile =
                                                await DefaultCacheManager()
                                                    .getSingleFile(fileItem);

                                            await player!
                                                .setAsset(fetchedFile.path);

                                            if (player!.playing) {
                                              setState(() {
                                                // currentFile = '';
                                                FFAppState()
                                                    .currentOfflineAudio = '';
                                                print(1);
                                              });
                                              await player!.stop();
                                            } else {
                                              setState(() {
                                                // currentFile = fileItem;

                                                FFAppState()
                                                        .currentOfflineAudio =
                                                    fileItem;

                                                print(2);
                                              });
                                              await player!.play();
                                            }
                                          },
                                          child: Container(
                                            width: 36,
                                            height: 36,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFE7D4C6),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              FFAppState().currentOfflineAudio ==
                                                      fileItem
                                                  ? Icons
                                                      .pause_circle_filled_rounded
                                                  : Icons.play_arrow_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              size: 24,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 0, 0, 0),
                                            child: Text(
                                              FFAppState()
                                                  .titleAudios[fileIndex],
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'montserrat',
                                                    color: Color(0xFF042433),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        onTap: () async {
                                          setState(() {
                                            DefaultCacheManager()
                                                .removeFile(fileItem);
                                            FFAppState().removeFromCacheAudios(
                                                fileItem);
                                            FFAppState().removeFromTitleAudios(
                                                FFAppState()
                                                    .titleAudios[fileIndex]);
                                          });
                                        },
                                        child: Icon(
                                          FontAwesomeIcons.trashCan,
                                          color: Color(0xFFE7D4C6),
                                          size: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
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
    );
  }
}
