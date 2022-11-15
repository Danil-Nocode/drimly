import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../components/button_widget.dart';
import '../components/view_file_widget.dart';
import '../components/view_photo_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_youtube_player.dart';
import '../flutter_flow/upload_media.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditCompleteTaskWidget extends StatefulWidget {
  const EditCompleteTaskWidget({
    Key? key,
    this.task,
    this.completeTask,
  }) : super(key: key);

  final TasksRecord? task;
  final CompleteTaskRecord? completeTask;

  @override
  _EditCompleteTaskWidgetState createState() => _EditCompleteTaskWidgetState();
}

class _EditCompleteTaskWidgetState extends State<EditCompleteTaskWidget> {
  bool isMediaUploading = false;
  List<String> uploadedFileUrls = [];

  PageController? pageViewController1;
  PageController? pageViewController2;
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController =
        TextEditingController(text: widget.completeTask!.textAnswer);
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubeFullScreenWrapper(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 16),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 40,
                                  icon: Icon(
                                    Icons.close_rounded,
                                    color: Color(0xFFC4C4C4),
                                    size: 24,
                                  ),
                                  onPressed: () async {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'tcyexkct' /* Задание */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'montserrat',
                                        color: Color(0xFF5E5E5E),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Text(
                                    widget.task!.name!,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'montserrat',
                                          color: Color(0xFF5E5E5E),
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        widget.task!.description!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'montserrat',
                                              color: Color(0xFF5E5E5E),
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                if (widget.task!.images!.toList().length != 0)
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 12, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'n4l0v9ly' /* Изображения */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'montserrat',
                                                      color: Color(0xFF5E5E5E),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      useGoogleFonts: false,
                                                    ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 16, 0, 0),
                                                child: Builder(
                                                  builder: (context) {
                                                    final image = widget
                                                        .task!.images!
                                                        .toList();
                                                    return Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 240,
                                                      child: Stack(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        30),
                                                            child: PageView
                                                                .builder(
                                                              controller: pageViewController1 ??=
                                                                  PageController(
                                                                      initialPage: min(
                                                                          0,
                                                                          image.length -
                                                                              1)),
                                                              scrollDirection:
                                                                  Axis.horizontal,
                                                              itemCount:
                                                                  image.length,
                                                              itemBuilder:
                                                                  (context,
                                                                      imageIndex) {
                                                                final imageItem =
                                                                    image[
                                                                        imageIndex];
                                                                return ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              15),
                                                                  child: Image
                                                                      .network(
                                                                    imageItem,
                                                                    width: 100,
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 1),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          10),
                                                              child: smooth_page_indicator
                                                                  .SmoothPageIndicator(
                                                                controller: pageViewController1 ??=
                                                                    PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            image.length -
                                                                                1)),
                                                                count: image
                                                                    .length,
                                                                axisDirection: Axis
                                                                    .horizontal,
                                                                onDotClicked:
                                                                    (i) {
                                                                  pageViewController1!
                                                                      .animateToPage(
                                                                    i,
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            500),
                                                                    curve: Curves
                                                                        .ease,
                                                                  );
                                                                },
                                                                effect: smooth_page_indicator
                                                                    .SlideEffect(
                                                                  spacing: 8,
                                                                  radius: 16,
                                                                  dotWidth: 8,
                                                                  dotHeight: 8,
                                                                  dotColor: Color(
                                                                      0xFF9E9E9E),
                                                                  activeDotColor:
                                                                      Color(
                                                                          0xFF3F51B5),
                                                                  paintStyle:
                                                                      PaintingStyle
                                                                          .fill,
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
                                if (widget.task!.videos!.toList().length != 0)
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 12, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'byv0kwvb' /* Видео */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'montserrat',
                                                      color: Color(0xFF5E5E5E),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      useGoogleFonts: false,
                                                    ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 16, 0, 0),
                                                child: Builder(
                                                  builder: (context) {
                                                    final video = widget
                                                        .task!.videos!
                                                        .toList();
                                                    return Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 240,
                                                      child: Stack(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        30),
                                                            child: PageView
                                                                .builder(
                                                              controller: pageViewController2 ??=
                                                                  PageController(
                                                                      initialPage: min(
                                                                          0,
                                                                          video.length -
                                                                              1)),
                                                              scrollDirection:
                                                                  Axis.horizontal,
                                                              itemCount:
                                                                  video.length,
                                                              itemBuilder:
                                                                  (context,
                                                                      videoIndex) {
                                                                final videoItem =
                                                                    video[
                                                                        videoIndex];
                                                                return FlutterFlowYoutubePlayer(
                                                                  url:
                                                                      videoItem,
                                                                  autoPlay:
                                                                      false,
                                                                  looping: true,
                                                                  mute: false,
                                                                  showControls:
                                                                      true,
                                                                  showFullScreen:
                                                                      true,
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 1),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          10),
                                                              child: smooth_page_indicator
                                                                  .SmoothPageIndicator(
                                                                controller: pageViewController2 ??=
                                                                    PageController(
                                                                        initialPage: min(
                                                                            0,
                                                                            video.length -
                                                                                1)),
                                                                count: video
                                                                    .length,
                                                                axisDirection: Axis
                                                                    .horizontal,
                                                                onDotClicked:
                                                                    (i) {
                                                                  pageViewController2!
                                                                      .animateToPage(
                                                                    i,
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            500),
                                                                    curve: Curves
                                                                        .ease,
                                                                  );
                                                                },
                                                                effect: smooth_page_indicator
                                                                    .SlideEffect(
                                                                  spacing: 8,
                                                                  radius: 16,
                                                                  dotWidth: 8,
                                                                  dotHeight: 8,
                                                                  dotColor: Color(
                                                                      0xFF9E9E9E),
                                                                  activeDotColor:
                                                                      Color(
                                                                          0xFF3F51B5),
                                                                  paintStyle:
                                                                      PaintingStyle
                                                                          .fill,
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
                                if (widget.task!.files!.toList().length != 0)
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 12, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'mfidwl6a' /* Файлы */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'montserrat',
                                                      color: Color(0xFF5E5E5E),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      useGoogleFonts: false,
                                                    ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 8, 0, 0),
                                                child: Builder(
                                                  builder: (context) {
                                                    final file = widget
                                                        .task!.files!
                                                        .toList();
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: List.generate(
                                                          file.length,
                                                          (fileIndex) {
                                                        final fileItem =
                                                            file[fileIndex];
                                                        return InkWell(
                                                          onTap: () async {
                                                            await showModalBottomSheet(
                                                              isScrollControlled:
                                                                  true,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                return Padding(
                                                                  padding: MediaQuery.of(
                                                                          context)
                                                                      .viewInsets,
                                                                  child:
                                                                      ViewFileWidget(
                                                                    file:
                                                                        fileItem,
                                                                  ),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                setState(
                                                                    () {}));
                                                          },
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        12),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .file_copy,
                                                                  color: Color(
                                                                      0xC9CB8AFE),
                                                                  size: 28,
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      'Вложенный файл ' +
                                                                          (fileIndex + 1)
                                                                              .toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'montserrat',
                                                                            color:
                                                                                Color(0xFF5E5E5E),
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
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
                                    ],
                                  ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'jte8jbvx' /* Выполнение задания */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'montserrat',
                                        color: Color(0xFF5E5E5E),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: textController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'montserrat',
                                            color: Color(0xFF909090),
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: false,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'hr52i0pn' /* Напишите свой ответ  */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'montserrat',
                                            color: Color(0xFF909090),
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: false,
                                          ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              12, 12, 12, 12),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'montserrat',
                                          color: Color(0xFF5E5E5E),
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                    maxLines: null,
                                    minLines: 4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 24),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: true,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(() => isMediaUploading = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() =>
                                              uploadedFileUrls = downloadUrls);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 16, 16, 16),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.perm_media_rounded,
                                                color: Color(0xC9CB8AFE),
                                                size: 24,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(8, 0, 0, 0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '5k0fbvyy' /* Загрузить медиа */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'montserrat',
                                                        color:
                                                            Color(0xFF5E5E5E),
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Builder(
                                    builder: (context) {
                                      final photo = uploadedFileUrls.length == 0
                                          ? widget.completeTask!.imagesAnswer!
                                              .toList()
                                          : uploadedFileUrls.toList();
                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(photo.length,
                                            (photoIndex) {
                                          final photoItem = photo[photoIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
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
                                                      child: ViewPhotoWidget(
                                                        photo: photoItem,
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              },
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                child: Image.network(
                                                  photoItem,
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
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
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: InkWell(
                          onTap: () async {
                            if (currentUserDocument!.psychologist != null) {
                              final ChatsRecordList =
                                  await queryChatsRecordOnce(
                                queryBuilder: (chatsRecord) =>
                                    chatsRecord.where('users',
                                        arrayContains: currentUserReference),
                                singleRecord: true,
                              );
                              final chat = ChatsRecordList.isNotEmpty
                                  ? ChatsRecordList.first
                                  : null;

                              final chatMessagesCreateData =
                                  createChatMessagesRecordData(
                                user: currentUserReference,
                                text:
                                    'Дополнено задание:\n${widget.task!.name} \n\nОтвет:\n' +
                                        textController!.text,
                                chat: chat!.reference,
                                timestamp: getCurrentTimestamp,
                              );
                              await ChatMessagesRecord.collection
                                  .doc()
                                  .set(chatMessagesCreateData);
                            }
                            final completeTaskUpdateData = {
                              ...createCompleteTaskRecordData(
                                textAnswer: textController!.text,
                                status: 'Дополнено',
                                datetime: getCurrentTimestamp,
                              ),
                              'imagesAnswer': uploadedFileUrls.length == 0
                                  ? widget.completeTask!.imagesAnswer!.toList()
                                  : uploadedFileUrls,
                            };
                            await widget.completeTask!.reference
                                .update(completeTaskUpdateData);
                            Navigator.pop(context);
                          },
                          child: ButtonWidget(
                            text: 'Дополнить',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
