import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/schema/section_custom_record.dart';
import '../complete_task/complete_task_widget.dart';
import '../edit_complete_task/edit_complete_task_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskSectionPageWidget extends StatefulWidget {
  const TaskSectionPageWidget({
    Key? key,
    this.section,
  }) : super(key: key);

  final SectionCustomRecord? section;

  @override
  _TaskSectionPageWidgetState createState() => _TaskSectionPageWidgetState();
}

class _TaskSectionPageWidgetState extends State<TaskSectionPageWidget> {
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
                'assets/images/Group_182.png',
              ).image,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 60, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () async {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.chevron_left_rounded,
                                color: Color(0xFFFFF6EF),
                                size: 36,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'vcegaq9i' /* Задания */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'montserrat',
                                      color: Color(0xFFFFF6EF),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 100, 16, 0),
                  child: StreamBuilder<List<TasksRecord>>(
                    stream: queryTasksRecord(
                      queryBuilder: (tasksRecord) => tasksRecord.where(
                          'section',
                          isEqualTo: widget.section!.reference),
                    ),
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
                      List<TasksRecord> columnTasksRecordList = snapshot.data!;
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(columnTasksRecordList.length,
                            (columnIndex) {
                          final columnTasksRecord =
                              columnTasksRecordList[columnIndex];
                          return Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child:
                                      StreamBuilder<List<CompleteTaskRecord>>(
                                    stream: queryCompleteTaskRecord(
                                      queryBuilder: (completeTaskRecord) =>
                                          completeTaskRecord
                                              .where('task',
                                                  isEqualTo: columnTasksRecord
                                                      .reference)
                                              .where('user',
                                                  isEqualTo:
                                                      currentUserReference),
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 30,
                                            height: 30,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<CompleteTaskRecord>
                                          containerCompleteTaskRecordList =
                                          snapshot.data!;
                                      final containerCompleteTaskRecord =
                                          containerCompleteTaskRecordList
                                                  .isNotEmpty
                                              ? containerCompleteTaskRecordList
                                                  .first
                                              : null;
                                      return Container(
                                        width: 100,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFF6EF),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 16, 16, 16),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Задание ${(columnIndex + 1).toString()}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'montserrat',
                                                          color:
                                                              Color(0xFF042433),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                  Container(
                                                    width: 30,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFE7D4C6),
                                                      shape: BoxShape.circle,
                                                    ),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    child: Stack(
                                                      children: [
                                                        if (!(containerCompleteTaskRecord !=
                                                            null))
                                                          Image.asset(
                                                            'assets/images/bookmark-svgrepo-com_1.png',
                                                            width: 16,
                                                            height: 16,
                                                            fit: BoxFit.contain,
                                                          ),
                                                        if (containerCompleteTaskRecord !=
                                                            null)
                                                          Image.asset(
                                                            'assets/images/Vector-2.png',
                                                            width: 16,
                                                            height: 16,
                                                            fit: BoxFit.contain,
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 12, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        columnTasksRecord.name!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'montserrat',
                                                                  color: Color(
                                                                      0xFF042433),
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
                                              if (!(containerCompleteTaskRecord !=
                                                  null))
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 12, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      InkWell(
                                                        onTap: () async {
                                                          await Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  CompleteTaskWidget(
                                                                task:
                                                                    columnTasksRecord,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFFFF6EF),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                            border: Border.all(
                                                              color: Color(
                                                                  0xFFE7D4C6),
                                                            ),
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        12,
                                                                        16,
                                                                        12),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'qf89ilbo' /* Выполнить */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'montserrat',
                                                                    color: Color(
                                                                        0xFF042433),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              if (containerCompleteTaskRecord !=
                                                  null)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 12, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      InkWell(
                                                        onTap: () async {
                                                          await Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  EditCompleteTaskWidget(
                                                                task:
                                                                    columnTasksRecord,
                                                                completeTask:
                                                                    containerCompleteTaskRecord,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFFFF6EF),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                            border: Border.all(
                                                              color: Color(
                                                                  0xFFE7D4C6),
                                                            ),
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        12,
                                                                        16,
                                                                        12),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '9hpdg2ga' /* Редактировать */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'montserrat',
                                                                    color: Color(
                                                                        0xFF042433),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              if ((containerCompleteTaskRecord !=
                                                      null) &&
                                                  (containerCompleteTaskRecord
                                                              .feedback !=
                                                          null &&
                                                      containerCompleteTaskRecord
                                                              .feedback !=
                                                          ''))
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 12, 0, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ny6smh4z' /* Обратная связь */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'montserrat',
                                                                  color: Color(
                                                                      0xFF042433),
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 8, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                containerCompleteTaskRecord
                                                                    .feedback!,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'montserrat',
                                                                      color: Color(
                                                                          0xFF042433),
                                                                      useGoogleFonts:
                                                                          false,
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
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      );
                    },
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
