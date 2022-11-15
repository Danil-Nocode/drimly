import 'package:cached_network_image/cached_network_image.dart';

import '../backend/backend.dart';
import '../backend/schema/section_custom_record.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../meditation_page/meditation_page_widget.dart';
import '../section_custom_page/section_custom_page_widget.dart';
import '../section_page/section_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PracticeCustomPageWidget extends StatefulWidget {
  const PracticeCustomPageWidget({
    Key? key,
    this.practice,
  }) : super(key: key);

  final PracticesRecord? practice;

  @override
  _PracticeCustomPageWidgetState createState() =>
      _PracticeCustomPageWidgetState();
}

class _PracticeCustomPageWidgetState extends State<PracticeCustomPageWidget> {
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
              image: CachedNetworkImageProvider(
                widget.practice!.coverBig!,
              ),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 90, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(32, 0, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.chevron_left_rounded,
                          color: Color(0xFF042433),
                          size: 36,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(60, 64, 60, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  widget.practice!.title!,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 13, 0, 0),
                                  child: Text(
                                    widget.practice!.desctiption!,
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
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 32, 16, 20),
                                child: Container(
                                  width: 100,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    color: Color(0xB5FFF6EF),
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                      color: Color(0xFFE7D4C6),
                                      width: 2,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 16, 16, 16),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              '${widget.practice!.sections!.toList().length.toString()} уроков',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'montserrat',
                                                    color: Color(0xFF042433),
                                                    fontWeight: FontWeight.w600,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        if (FFAppState().lastAudio != null)
                                          StreamBuilder<AudiosRecord>(
                                            stream: AudiosRecord.getDocument(
                                                FFAppState().lastAudio!),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 30,
                                                    height: 30,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                  ),
                                                );
                                              }
                                              final rowAudiosRecord =
                                                  snapshot.data!;
                                              return Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  InkWell(
                                                    onTap: () async {
                                                      await Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              MeditationPageWidget(
                                                                  audio: FFAppState()
                                                                      .lastAudio),
                                                        ),
                                                      );
                                                    },
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'uteaq7wc' /* Последний урок */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyText1
                                                          .override(
                                                            fontFamily:
                                                                'montserrat',
                                                            color: Color(
                                                                0xFF042433),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.chevron_right_rounded,
                                                    color: Colors.black,
                                                    size: 24,
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 20, 24, 0),
                  child: Builder(
                    builder: (context) {
                      final sections =
                          widget.practice!.sectionsCustom!.toList();
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        itemCount: sections.length,
                        itemBuilder: (context, sectionsIndex) {
                          final sectionsItem = sections[sectionsIndex];

                          return Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                            child: StreamBuilder<SectionCustomRecord>(
                              stream:
                                  SectionCustomRecord.getDocument(sectionsItem),
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
                                final containerSectionsRecord = snapshot.data!;
                                return InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            SectionCustomPageWidget(
                                          section: containerSectionsRecord,
                                          numlesson: sectionsIndex + 1,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 100,
                                    height: 55,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFF6EF),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 10, 16, 10),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(9, 0, 0, 0),
                                                  child: Text(
                                                    '${(sectionsIndex + 1).toString()}.  ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'montserrat',
                                                          color:
                                                              Color(0xFF9B9B9B),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    containerSectionsRecord
                                                        .title!,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'montserrat',
                                                          color:
                                                              Color(0xFF042433),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                containerSectionsRecord
                                                            .duration! ==
                                                        '0'
                                                    ? ''
                                                    : containerSectionsRecord
                                                        .duration!,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'montserrat',
                                                      color: Color(0xFFC4C4C4),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts: false,
                                                    ),
                                              ),
                                              Icon(
                                                Icons.chevron_right_rounded,
                                                color: Colors.black,
                                                size: 24,
                                              ),
                                            ],
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
    );
  }
}
