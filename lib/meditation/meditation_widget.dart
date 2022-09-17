import 'package:cached_network_image/cached_network_image.dart';

import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import '../meditation_list/meditation_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MeditationWidget extends StatefulWidget {
  const MeditationWidget({Key? key}) : super(key: key);

  @override
  _MeditationWidgetState createState() => _MeditationWidgetState();
}

class _MeditationWidgetState extends State<MeditationWidget> {
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
                'assets/images/Group_181-2.png',
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 140,
                      //height: 53,
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
                                EdgeInsetsDirectional.fromSTEB(10, 10, 0, 10),
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
                                  borderRadius: BorderRadius.circular(1000),
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
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
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
                                              'ekaf78vs' /* 5.0 */,
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(18, 14, 40, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'oeutnkng' /* Медитации */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'montserrat',
                                    color: Colors.white,
                                    fontSize: 24,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'wtiutjcg' /* Лучшие подборки медитаций */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'montserrat',
                                      color: Color(0xFFA6A6A6),
                                      fontSize: 10,
                                      useGoogleFonts: false,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 64, 24, 4),
                  child: StreamBuilder<List<MeditationRecord>>(
                    stream: queryMeditationRecord(),
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
                      List<MeditationRecord> gridViewMeditationRecordList =
                          snapshot.data!;

                      gridViewMeditationRecordList
                          .sort((a, b) => a.index!.compareTo(b.index!));

                      // if (currentUserDocument!.status == 'free') {
                      //   return SizedBox(
                      //     //height: MediaQuery.of(context).size.height * 1,
                      //     child: Text(
                      //       'Купите платный пакет, чтобы прослушивать медитации',
                      //       textAlign: TextAlign.center,
                      //       style:
                      //           FlutterFlowTheme.of(context).bodyText1.override(
                      //                 fontFamily: 'montserrat',
                      //                 color: Colors.white,
                      //                 fontSize: 16,
                      //                 useGoogleFonts: false,
                      //               ),
                      //     ),
                      //   );
                      // }
                      return GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 0.92,
                        ),
                        scrollDirection: Axis.vertical,
                        itemCount: gridViewMeditationRecordList.length,
                        itemBuilder: (context, gridViewIndex) {
                          final gridViewMeditationRecord =
                              gridViewMeditationRecordList[gridViewIndex];
                          if (!gridViewMeditationRecord.isView!) {
                            return Container();
                          }
                          return Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFF33325C),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Stack(
                              children: [
                                InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            MeditationListWidget(
                                          meditation: gridViewMeditationRecord,
                                        ),
                                      ),
                                    );
                                    // await Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (context) => NavBarPage(
                                    //       initialPage: 'MeditationList',
                                    //       meditationRecord:
                                    //           gridViewMeditationRecord,
                                    //     ),
                                    //   ),
                                    // );
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25),
                                        ),
                                        child: CachedNetworkImage(
                                          imageUrl:
                                              gridViewMeditationRecord.cover!,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 126,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            18, 8, 8, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 2),
                                              child: Text(
                                                gridViewMeditationRecord.title!,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                        fontFamily:
                                                            'montserrat',
                                                        color: Colors.white,
                                                        fontSize: 12,
                                                        useGoogleFonts: false,
                                                        fontWeight:
                                                            FontWeight.w500),
                                              ),
                                            ),
                                            Text(
                                              '${gridViewMeditationRecord.audios!.toList().length.toString()} уроков',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'montserrat',
                                                        fontSize: 10,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 8, 8, 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Color(0x82C4C4C4),
                                          shape: BoxShape.circle,
                                        ),
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Stack(
                                          children: [
                                            // Image.asset(
                                            //   'assets/images/Vector-2.png',
                                            //   width: 11,
                                            //   height: 16,
                                            //   fit: BoxFit.contain,
                                            // ),
                                            Image.asset(
                                              'assets/images/Vector.png',
                                              width: 11,
                                              height: 16,
                                              fit: BoxFit.contain,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
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
