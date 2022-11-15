import 'package:cached_network_image/cached_network_image.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import '../meditation_page/meditation_page_widget.dart';
import '../practice_custom_page/practice_custom_page.dart';
import '../practice_page/practice_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../section_page/section_page_widget.dart';

class PracticeWidget extends StatefulWidget {
  const PracticeWidget({Key? key}) : super(key: key);

  @override
  _PracticeWidgetState createState() => _PracticeWidgetState();
}

class _PracticeWidgetState extends State<PracticeWidget> {
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 62, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'dm53c3gs' /* Практики */,
                        ),
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'montserrat',
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: false,
                            ),
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
                                            'i97m60r9' /* 5.0 */,
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
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 70, 24, 4),
                  child: StreamBuilder<List<PracticesRecord>>(
                    stream: queryPracticesRecord(),
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
                      List<PracticesRecord> listViewPracticesRecordList =
                          snapshot.data!;
                      listViewPracticesRecordList
                          .sort((a, b) => a.index!.compareTo(b.index!));
                      if ((currentUserDocument!.status == 'free' ||
                              currentUserDocument!.status == 'start') &&
                          currentUserDocument!.moneyspace != true) {
                        return SizedBox(
                          child: Text(
                            'Скоро мы добавим сюда контент',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'montserrat',
                                      color: Colors.white,
                                      fontSize: 16,
                                      useGoogleFonts: false,
                                    ),
                          ),
                        );
                      }
                      return StreamBuilder<List<PracticesRecord>>(
                          stream: queryPracticesRecord(
                            queryBuilder: (practicesRecord) => practicesRecord
                                .where('title', isEqualTo: 'Money Space'),
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
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            List<PracticesRecord> rowPracticesRecordList =
                                snapshot.data!;
                            final moneySpacePractice =
                                rowPracticesRecordList.isNotEmpty
                                    ? rowPracticesRecordList.first
                                    : null;
                            if ((currentUserDocument!.status == 'free' ||
                                    currentUserDocument!.status == 'start') &&
                                currentUserDocument!.moneyspace == true) {
                              listViewPracticesRecordList.clear();
                            }
                            if ((currentUserDocument!.status == 'free' ||
                                    currentUserDocument!.status == 'start') &&
                                currentUserDocument!.moneyspace == true) {
                              listViewPracticesRecordList.insert(
                                  0, moneySpacePractice!);
                            }
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewPracticesRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewPracticesRecord =
                                    listViewPracticesRecordList[listViewIndex];

                                String title;
                                String description;
                                if (FFLocalizations.of(context).languageCode ==
                                        'en' &&
                                    listViewPracticesRecord.title! ==
                                        'PROкачай себя') {
                                  title = 'Better Me';
                                } else if (FFLocalizations.of(context)
                                            .languageCode ==
                                        'en' &&
                                    listViewPracticesRecord.title! ==
                                        'Автомобиль') {
                                  title = 'Car';
                                } else if (FFLocalizations.of(context)
                                            .languageCode ==
                                        'en' &&
                                    listViewPracticesRecord.title! ==
                                        'Назад в будущее') {
                                  title = 'Back to Feauture';
                                } else {
                                  title = listViewPracticesRecord.title!;
                                }

                                if (FFLocalizations.of(context).languageCode ==
                                        'en' &&
                                    listViewPracticesRecord.desctiption! ==
                                        'Отпустите прошлое, крепко встать на ноги в настоящем, на всех парах лететь к светлому будущему') {
                                  description =
                                      'Forget about you past, stand strong on your feet in your new reality and life your new bright feature self';
                                } else {
                                  description =
                                      listViewPracticesRecord.desctiption!;
                                }

                                if (listViewPracticesRecord.title! ==
                                        'Money Space' &&
                                    currentUserDocument!.moneyspace! == false) {
                                  return Container();
                                }

                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 12),
                                  child: InkWell(
                                    onTap: () async {
                                      if (listViewPracticesRecord.audio !=
                                          null) {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                MeditationPageWidget(
                                              audio:
                                                  listViewPracticesRecord.audio,
                                            ),
                                          ),
                                        );
                                      } else if (listViewPracticesRecord
                                              .section !=
                                          null) {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                SectionPageWidget(
                                              section: listViewPracticesRecord
                                                  .section,
                                              numlesson: 2,
                                            ),
                                          ),
                                        );
                                      } else {
                                        if (listViewPracticesRecord
                                                .sectionsCustom!.length !=
                                            0) {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  PracticeCustomPageWidget(
                                                practice:
                                                    listViewPracticesRecord,
                                              ),
                                            ),
                                          );
                                        } else {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  PracticePageWidget(
                                                practice:
                                                    listViewPracticesRecord,
                                              ),
                                            ),
                                          );
                                        }
                                      }
                                    },
                                    child: Container(
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFF6EF),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 10, 10, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 2, 0, 2),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                child: CachedNetworkImage(
                                                  imageUrl:
                                                      listViewPracticesRecord
                                                          .cover!,
                                                  height: 131,
                                                  width: 93,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(23, 0, 0, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          title,
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
                                                        Container(
                                                          width: 30,
                                                          height: 30,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFE7D4C6),
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                          child: Stack(
                                                            children: [
                                                              Image.asset(
                                                                'assets/images/bookmark-svgrepo-com_1.png',
                                                                width: 16,
                                                                height: 16,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 7, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width: 74,
                                                            height: 22,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFE7D4C6),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15),
                                                            ),
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 0),
                                                            child: Text(
                                                              '${listViewPracticesRecord.countLesson} урока',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'montserrat',
                                                                    color: Color(
                                                                        0xFF08546C),
                                                                    fontSize:
                                                                        10,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        11,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              listViewPracticesRecord
                                                                          .duration! ==
                                                                      '0'
                                                                  ? ''
                                                                  : listViewPracticesRecord
                                                                      .duration!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'montserrat',
                                                                    color: Color(
                                                                        0xFF8F8F8F),
                                                                    fontSize:
                                                                        10,
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
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 19, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              description,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'montserrat',
                                                                    color: Color(
                                                                        0xFF8F8F8F),
                                                                    fontSize:
                                                                        10,
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
                                                  ],
                                                ),
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
                          });
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(27, 0, 27, 140),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Color(0xFF33325C),
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
