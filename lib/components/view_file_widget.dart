import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_pdf_viewer.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewFileWidget extends StatefulWidget {
  const ViewFileWidget({
    Key? key,
    this.file,
  }) : super(key: key);

  final String? file;

  @override
  _ViewFileWidgetState createState() => _ViewFileWidgetState();
}

class _ViewFileWidgetState extends State<ViewFileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Stack(
        children: [
          FlutterFlowPdfViewer(
            networkPath: widget.file!,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            horizontalScroll: false,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 10,
                    borderWidth: 1,
                    buttonSize: 40,
                    fillColor: Color(0x5557636C),
                    icon: Icon(
                      Icons.download_sharp,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20,
                    ),
                    onPressed: () async {
                      await launchURL(widget.file!);
                    },
                  ),
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 10,
                  borderWidth: 1,
                  buttonSize: 40,
                  fillColor: Color(0x5557636C),
                  icon: Icon(
                    Icons.close_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 20,
                  ),
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
