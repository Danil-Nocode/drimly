import '../backend/backend.dart';
import '../components/audio_player_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MeditationPageWidget extends StatefulWidget {
  const MeditationPageWidget({
    Key? key,
    this.audio,
  }) : super(key: key);

  final AudiosRecord? audio;

  @override
  _MeditationPageWidgetState createState() => _MeditationPageWidgetState();
}

class _MeditationPageWidgetState extends State<MeditationPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: Color(0xFF33325C),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.network(
                  widget.audio!.cover!,
                ).image,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 70, 50, 0),
                  child: Text(
                    widget.audio!.title!,
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'montserrat',
                          color: Colors.white,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                AudioPlayerWidget(
                  audio: widget.audio,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
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
                            colors: [Color(0xFFBC7EFD), Color(0xFFE69FFD)],
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'ee2r2btk' /* добавить заметку */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'montserrat',
                                    color: Color(0xFF929292),
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
        ),
      ),
    );
  }
}
