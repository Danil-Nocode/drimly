import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    Key? key,
    this.text,
  }) : super(key: key);

  final String? text;

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 56,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Color(0xFFCB8AFE),
            offset: Offset(0, 2),
          )
        ],
        gradient: LinearGradient(
          colors: [Color(0xFFE69FFD), Color(0xFFBC7EFD)],
          stops: [0, 1],
          begin: AlignmentDirectional(1, 0),
          end: AlignmentDirectional(-1, 0),
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      alignment: AlignmentDirectional(0, 0),
      child: Text(
        widget.text!,
        style: FlutterFlowTheme.of(context).bodyText1.override(
              fontFamily: 'montserrat',
              color: Colors.white,
              fontWeight: FontWeight.w600,
              useGoogleFonts: false,
            ),
      ),
    );
  }
}
