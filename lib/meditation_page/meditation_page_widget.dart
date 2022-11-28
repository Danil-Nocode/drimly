import 'package:cached_network_image/cached_network_image.dart';
import 'package:drimly/auth/firebase_user_provider.dart';
import 'package:flutter/scheduler.dart';
import 'package:just_audio_background/just_audio_background.dart';

import '../backend/backend.dart';
import '../components/audio_player_widget.dart';
import '../components/audio_service.dart';
import '../components/more_audio_widget.dart';
import '../create_notice/create_notice_widget.dart';
import '../files_audio_page/files_audio_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:drimly/main.dart';

import '../main.dart';
import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import '../components/common.dart';
import 'package:rxdart/rxdart.dart';

import '../task_page/task_page_widget.dart';

class MeditationPageWidget extends StatefulWidget {
  const MeditationPageWidget({
    Key? key,
    this.audio,
  }) : super(key: key);

  final DocumentReference? audio;

  @override
  _MeditationPageWidgetState createState() => _MeditationPageWidgetState();
}

class _MeditationPageWidgetState extends State<MeditationPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  // Stream<double>? downloadAudio;
  // LockCachingAudioSource? audioSource;
  Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
          player!.positionStream,
          player!.bufferedPositionStream,
          player!.durationStream,
          (position, bufferedPosition, duration) => PositionData(
              position, bufferedPosition, duration ?? Duration.zero));
  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() => FFAppState().lastAudio = widget.audio!);
    });
  }

  @override
  Widget build(BuildContext context) {
    //final player = AudioPlayer();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: StreamBuilder<AudiosRecord>(
            stream: AudiosRecord.getDocument(widget.audio!),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: CircularProgressIndicator(
                      color: FlutterFlowTheme.of(context).primaryColor,
                    ),
                  ),
                );
              }
              final containerAudiosRecord = snapshot.data!;
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  color: Color(0xFF33325C),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: containerAudiosRecord.cover! == ''
                        ? Image.asset(
                            'assets/images/29.jpg',
                            fit: BoxFit.cover,
                          ).image
                        : CachedNetworkImageProvider(
                            containerAudiosRecord.cover!,
                          ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Generated code for this Stack Widget...
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                        child: Stack(
                          alignment: AlignmentDirectional(-0.9, 0),
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(72, 0, 72, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      containerAudiosRecord.title!,
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'montserrat',
                                            color: Colors.white,
                                            useGoogleFonts: false,
                                            fontSize: 16,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.chevron_left_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      size: 32,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 12.0),
                                        child: Stack(
                                          alignment: Alignment(0, 0),
                                          children: [
                                            InkWell(
                                              onTap: () async {
                                                // FFAppState().cacheAudios = [];
                                                // FFAppState().titleAudios = [];
                                                if (!FFAppState()
                                                    .cacheAudios
                                                    .contains(
                                                        containerAudiosRecord
                                                            .audio!)) {
                                                  setState(() {
                                                    final audioSource =
                                                        LockCachingAudioSource(
                                                      Uri.parse(
                                                          containerAudiosRecord
                                                              .audio!),
                                                      tag: MediaItem(
                                                        id: '1',
                                                        album:
                                                            "Медитации Елены Друма",
                                                        title:
                                                            containerAudiosRecord
                                                                .title!,
                                                        // artUri: Uri.parse(
                                                        //     widget.audio!.cover!),
                                                      ),
                                                    );
                                                  });
                                                  FFAppState().addToCacheAudios(
                                                      containerAudiosRecord
                                                          .audio!);
                                                  FFAppState().addToTitleAudios(
                                                      containerAudiosRecord
                                                          .title!);
                                                } else {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                        content: Text(
                                                            'Аудио уже загружено')),
                                                  );
                                                }

                                                // print(audioSource
                                                //     .downloadProgressStream);
                                                // FFAppState().cacheAudios = [];
                                                // FFAppState().titleAudios = [];

                                                // await AudioPlayer.clearAssetCache();

                                                // await audioSource.clearCache();
                                              },
                                              child: Row(
                                                children: [
                                                  // if (audioSource != null)
                                                  //   StreamBuilder<double>(
                                                  //       stream: audioSource!
                                                  //           .downloadProgressStream,
                                                  //       builder: (context,
                                                  //           snapshot) {
                                                  //         if (!snapshot
                                                  //             .hasData) {
                                                  //           return Center(
                                                  //             child: SizedBox(
                                                  //               width: 30,
                                                  //               height: 30,
                                                  //               child:
                                                  //                   CircularProgressIndicator(
                                                  //                 color: FlutterFlowTheme.of(
                                                  //                         context)
                                                  //                     .primaryColor,
                                                  //               ),
                                                  //             ),
                                                  //           );
                                                  //         }

                                                  //         double progress =
                                                  //             snapshot.data!;
                                                  //         print(progress);
                                                  //         return Center(
                                                  //           child: SizedBox(
                                                  //             width: 18,
                                                  //             height: 18,
                                                  //             child:
                                                  //                 CircularProgressIndicator(
                                                  //               strokeWidth: 3,
                                                  //               valueColor:
                                                  //                   AlwaysStoppedAnimation<
                                                  //                           Color>(
                                                  //                       Color(
                                                  //                           0xFF959CD8)),
                                                  //               value: progress,
                                                  //               color: Color(
                                                  //                   0xFF959CD8),
                                                  //               backgroundColor:
                                                  //                   Colors
                                                  //                       .white,
                                                  //             ),
                                                  //           ),
                                                  //         );
                                                  //       }),
                                                  // if (audioSource == null)
                                                  Icon(
                                                    Icons.download,
                                                    color: FFAppState()
                                                            .cacheAudios
                                                            .contains(
                                                                containerAudiosRecord
                                                                    .audio!)
                                                        ? Color(
                                                            0xFF959CD8) // Color(0xFFBC7EFD)
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBtnText,
                                                    size: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      if (containerAudiosRecord.files! ||
                                          containerAudiosRecord.tasks!)
                                        InkWell(
                                          onTap: () async {
                                            if (containerAudiosRecord.files! &&
                                                containerAudiosRecord.tasks!) {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                context: context,
                                                builder: (context) {
                                                  return Padding(
                                                    padding:
                                                        MediaQuery.of(context)
                                                            .viewInsets,
                                                    child: MoreAudioWidget(
                                                      audio:
                                                          containerAudiosRecord,
                                                    ),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));
                                            } else {
                                              if (containerAudiosRecord
                                                  .files!) {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        FilesAudioPageWidget(
                                                      images:
                                                          containerAudiosRecord
                                                              .filesStorage!
                                                              .toList(),
                                                    ),
                                                  ),
                                                );
                                              } else {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        TaskPageWidget(
                                                      audio:
                                                          containerAudiosRecord,
                                                    ),
                                                  ),
                                                );
                                              }
                                            }
                                          },
                                          child: Icon(
                                            Icons.more_vert,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            size: 24,
                                          ),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      AudioPlayerWidget(
                        audio: containerAudiosRecord,
                        player: player!,
                      ),
                      StreamBuilder<PositionData>(
                        stream: _positionDataStream,
                        builder: (context, snapshot) {
                          final positionData = snapshot.data;
                          return SeekBar(
                            duration: positionData?.duration ?? Duration.zero,
                            position: positionData?.position ?? Duration.zero,
                            bufferedPosition:
                                positionData?.bufferedPosition ?? Duration.zero,
                            onChangeEnd: player!.seek,
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CreateNoticeWidget(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 10,
                                      color: Color(0xFFCB8AFE),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFBC7EFD),
                                      Color(0xFFE69FFD)
                                    ],
                                    stops: [0, 1],
                                    begin: AlignmentDirectional(-1, 1),
                                    end: AlignmentDirectional(1, -1),
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ee2r2btk' /* добавить заметку */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'montserrat',
                                      color: Colors.white,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}

/// Displays the play/pause button and volume/speed sliders.
class ControlButtons extends StatelessWidget {
  final AudioPlayer player;

  const ControlButtons(this.player, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Opens volume slider dialog
        IconButton(
          icon: const Icon(Icons.volume_up),
          onPressed: () {
            showSliderDialog(
              context: context,
              title: "Adjust volume",
              divisions: 10,
              min: 0.0,
              max: 1.0,
              value: player.volume,
              stream: player.volumeStream,
              onChanged: player.setVolume,
            );
          },
        ),

        /// This StreamBuilder rebuilds whenever the player state changes, which
        /// includes the playing/paused state and also the
        /// loading/buffering/ready state. Depending on the state we show the
        /// appropriate button or loading indicator.
        StreamBuilder<PlayerState>(
          stream: player.playerStateStream,
          builder: (context, snapshot) {
            final playerState = snapshot.data;
            final processingState = playerState?.processingState;
            final playing = playerState?.playing;
            if (processingState == ProcessingState.loading ||
                processingState == ProcessingState.buffering) {
              return Container(
                margin: const EdgeInsets.all(8.0),
                width: 64.0,
                height: 64.0,
                child: const CircularProgressIndicator(),
              );
            } else if (playing != true) {
              return IconButton(
                icon: const Icon(Icons.play_arrow),
                iconSize: 64.0,
                onPressed: player.play,
              );
            } else if (processingState != ProcessingState.completed) {
              return IconButton(
                icon: const Icon(Icons.pause),
                iconSize: 64.0,
                onPressed: player.pause,
              );
            } else {
              return IconButton(
                icon: const Icon(Icons.replay),
                iconSize: 64.0,
                onPressed: () => player.seek(Duration.zero),
              );
            }
          },
        ),
        // Opens speed slider dialog
        StreamBuilder<double>(
          stream: player.speedStream,
          builder: (context, snapshot) => IconButton(
            icon: Text("${snapshot.data?.toStringAsFixed(1)}x",
                style: const TextStyle(fontWeight: FontWeight.bold)),
            onPressed: () {
              showSliderDialog(
                context: context,
                title: "Adjust speed",
                divisions: 10,
                min: 0.5,
                max: 1.5,
                value: player.speed,
                stream: player.speedStream,
                onChanged: player.setSpeed,
              );
            },
          ),
        ),
      ],
    );
  }
}
