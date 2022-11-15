import '../backend/backend.dart';
import '../backend/schema/section_custom_record.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_youtube_player.dart';
import '../meditation_page/meditation_page_widget.dart';
import '../task_section_page/task_section_page_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionCustomPageWidget extends StatefulWidget {
  const SectionCustomPageWidget({
    Key? key,
    this.section,
    this.numlesson,
  }) : super(key: key);

  final SectionCustomRecord? section;
  final int? numlesson;

  @override
  _SectionCustomPageWidgetState createState() =>
      _SectionCustomPageWidgetState();
}

class _SectionCustomPageWidgetState extends State<SectionCustomPageWidget> {
  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return YoutubeFullScreenWrapper(
      child: Scaffold(
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
                  'assets/images/Group_185.png',
                ).image,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Stack(
                              alignment: AlignmentDirectional(-1, 0),
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        widget.section!.title!,
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1
                                            .override(
                                              fontFamily: 'montserrat',
                                              color: Color(0xFF042433),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 50,
                                      icon: Icon(
                                        Icons.keyboard_arrow_left_rounded,
                                        color: Color(0xFF042433),
                                        size: 25,
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    if (widget.section!.task ?? true)
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30,
                                        borderWidth: 1,
                                        buttonSize: 50,
                                        icon: Icon(
                                          Icons.more_vert,
                                          color: Color(0xFF042433),
                                          size: 25,
                                        ),
                                        onPressed: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  TaskSectionPageWidget(
                                                section: widget.section,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 13, 0, 0),
                                    child: Text(
                                      'Урок ${widget.numlesson?.toString()}',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'montserrat',
                                            color: Color(0xFF808080),
                                            fontSize: 13,
                                            useGoogleFonts: false,
                                          ),
                                    ),
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
                if (widget.section!.videos!.toList().length != 0)
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 16, 0, 0),
                                  child: Builder(
                                    builder: (context) {
                                      final video =
                                          widget.section!.videos!.toList();
                                      return Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 220,
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 30),
                                              child: PageView.builder(
                                                controller:
                                                    pageViewController ??=
                                                        PageController(
                                                            initialPage: min(
                                                                0,
                                                                video.length -
                                                                    1)),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: video.length,
                                                itemBuilder:
                                                    (context, videoIndex) {
                                                  final videoItem =
                                                      video[videoIndex];
                                                  return Container(
                                                    child:
                                                        FlutterFlowYoutubePlayer(
                                                      url: videoItem,
                                                      autoPlay: false,
                                                      looping: true,
                                                      mute: false,
                                                      showControls: true,
                                                      showFullScreen: true,
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, 1),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 10),
                                                child: smooth_page_indicator
                                                    .SmoothPageIndicator(
                                                  controller:
                                                      pageViewController ??=
                                                          PageController(
                                                              initialPage: min(
                                                                  0,
                                                                  video.length -
                                                                      1)),
                                                  count: video.length,
                                                  axisDirection:
                                                      Axis.horizontal,
                                                  onDotClicked: (i) {
                                                    pageViewController!
                                                        .animateToPage(
                                                      i,
                                                      duration: Duration(
                                                          milliseconds: 500),
                                                      curve: Curves.ease,
                                                    );
                                                  },
                                                  effect: smooth_page_indicator
                                                      .SlideEffect(
                                                    spacing: 8,
                                                    radius: 16,
                                                    dotWidth: 8,
                                                    dotHeight: 8,
                                                    dotColor: Color(0xFF9E9E9E),
                                                    activeDotColor:
                                                        Color(0xFF3F51B5),
                                                    paintStyle:
                                                        PaintingStyle.fill,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (widget.section!.audios!.toList().length != 0)
                  Expanded(
                    flex: 7,
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 36, 24, 0),
                      child: Builder(
                        builder: (context) {
                          final audios = widget.section!.audios!.toList();
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            itemCount: audios.length,
                            itemBuilder: (context, audiosIndex) {
                              final audiosItem = audios[audiosIndex];
                              return Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                                child: StreamBuilder<AudiosRecord>(
                                  stream: AudiosRecord.getDocument(audiosItem),
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
                                    final containerAudiosRecord =
                                        snapshot.data!;
                                    return InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                MeditationPageWidget(
                                              audio: containerAudiosRecord
                                                  .reference,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        width: 100,
                                        height: 55,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFF6EF),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 10, 10, 10),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 14, 0),
                                                      child: Image.asset(
                                                        'assets/images/play_button.png',
                                                        width: 30,
                                                        height: 30,
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        containerAudiosRecord
                                                            .title!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'montserrat',
                                                                  color: Color(
                                                                      0xFF042433),
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 10, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      containerAudiosRecord
                                                              .minute!
                                                              .toString() +
                                                          ' мин',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyText1
                                                          .override(
                                                            fontFamily:
                                                                'montserrat',
                                                            color: Color(
                                                                0xFFC4C4C4),
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
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
      ),
    );
  }
}
