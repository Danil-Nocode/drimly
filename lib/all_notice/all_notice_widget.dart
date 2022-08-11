import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../notice_page/notice_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllNoticeWidget extends StatefulWidget {
  const AllNoticeWidget({Key? key}) : super(key: key);

  @override
  _AllNoticeWidgetState createState() => _AllNoticeWidgetState();
}

class _AllNoticeWidgetState extends State<AllNoticeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
                    Image.asset(
                      'assets/images/Group_26.png',
                      width: 12,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(11, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'ljf51ck9' /* Мои заметки */,
                        ),
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.chevron_left_rounded,
                          color: Color(0xFFBCBCBC),
                          size: 28,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  StreamBuilder<List<NotesRecord>>(
                    stream: queryNotesRecord(
                      queryBuilder: (notesRecord) => notesRecord.where('user',
                          isEqualTo: currentUserReference),
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
                      List<NotesRecord> textNotesRecordList = snapshot.data!;
                      return Text(
                        'Всего ${textNotesRecordList.length.toString()} заметки',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'montserrat',
                              color: Color(0xFFBCBCBC),
                              fontSize: 10,
                              useGoogleFonts: false,
                            ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(11, 16, 11, 0),
              child: StreamBuilder<List<NotesRecord>>(
                stream: queryNotesRecord(
                  queryBuilder: (notesRecord) => notesRecord.where('user',
                      isEqualTo: currentUserReference),
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
                  List<NotesRecord> listViewNotesRecordList = snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewNotesRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewNotesRecord =
                          listViewNotesRecordList[listViewIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 13),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NoticePageWidget(
                                  notice: listViewNotesRecord,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: 100,
                            height: 144,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Color(0xFF959CD8),
                                width: 2,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24, 16, 24, 16),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          listViewNotesRecord.description!,
                                          maxLines: 4,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'montserrat',
                                                color: Color(0xFF5E5E5E),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          dateTimeFormat('d/M/y',
                                              listViewNotesRecord.date!),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'montserrat',
                                                color: Color(0xFFA5A5A5),
                                                fontSize: 12,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                        Container(
                                          width: 34,
                                          height: 34,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF1F1F1),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            Icons.chevron_right_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            size: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
