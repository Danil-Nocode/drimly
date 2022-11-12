import '../backend/backend.dart';
import '../backend/schema/chats_record.dart';
import '../flutter_flow/chat/index.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPageUserWidget extends StatefulWidget {
  const ChatPageUserWidget({
    Key? key,
    // this.chatUser,
    // this.chatRef,
  }) : super(key: key);

  // final UsersRecord? chatUser;
  // final DocumentReference? chatRef;

  @override
  _ChatPageUserWidgetState createState() => _ChatPageUserWidgetState();
}

class _ChatPageUserWidgetState extends State<ChatPageUserWidget> {
  FFChatInfo? _chatInfo;
  // bool isGroupChat() {
  //   if (widget.chatUser == null) {
  //     return true;
  //   }
  //   if (widget.chatRef == null) {
  //     return false;
  //   }
  //   return _chatInfo?.isGroupChat ?? false;
  // }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // FFChatManager.instance
    //     .getChatInfo(
    //   otherUserRecord: widget.chatUser,
    //   chatReference: widget.chatRef,
    // )
    //     .listen((info) {
    //   if (mounted) {
    //     setState(() => _chatInfo = info);
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
        stream: UsersRecord.getDocument(currentUserDocument!.psychologist!),
        builder: (context, snapshot) {
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
          final psychologist = snapshot.data;
          return StreamBuilder<List<ChatsRecord>>(
              stream: queryChatsRecord(
                queryBuilder: (chatsRecord) => chatsRecord.where('users',
                    arrayContains: currentUserReference),
                singleRecord: true,
              ),
              builder: (context, snapshot) {
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
                final ChatsRecordList = snapshot.data;
                final ChatsRecordOne =
                    ChatsRecordList!.isNotEmpty ? ChatsRecordList.first : null;

                ChatsRecord? chat;

                if (ChatsRecordOne == null) {
                  final chatsCreateData = {
                    ...createChatsRecordData(
                      userA: psychologist!.reference,
                      userB: currentUserReference,
                    ),
                    'users': [psychologist.reference, currentUserReference],
                  };
                  var chatsRecordReference = ChatsRecord.collection.doc();
                  chatsRecordReference.set(chatsCreateData);
                  chat = ChatsRecord.getDocumentFromData(
                      chatsCreateData, chatsRecordReference);
                } else {
                  chat = ChatsRecordOne;
                }

                return Scaffold(
                  key: scaffoldKey,
                  appBar: AppBar(
                    backgroundColor: Color(0xFF020925),
                    automaticallyImplyLeading: false,
                    title: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Stack(
                            alignment: AlignmentDirectional(1, 0),
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    psychologist!.displayName!,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'montserrat',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 32,
                                height: 32,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  psychologist.photoUrl!,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    actions: [],
                    centerTitle: false,
                    elevation: 2,
                  ),
                  body: GestureDetector(
                    onTap: () => FocusScope.of(context).unfocus(),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/Rectangle_154.jpg',
                          ).image,
                        ),
                      ),
                      child: StreamBuilder<FFChatInfo>(
                        stream: FFChatManager.instance.getChatInfo(
                          otherUserRecord: psychologist,
                          chatReference: chat.reference,
                        ),
                        builder: (context, snapshot) => snapshot.hasData
                            ? FFChatPage(
                                chatInfo: snapshot.data!,
                                allowImages: true,
                                backgroundColor: Color(0xFFF2F4F8),
                                timeDisplaySetting:
                                    TimeDisplaySetting.alwaysVisible,
                                currentUserBoxDecoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                otherUsersBoxDecoration: BoxDecoration(
                                  color: Color(0xFF33325C),
                                  border: Border.all(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                currentUserTextStyle: GoogleFonts.getFont(
                                  'DM Sans',
                                  color: Color(0xFF1E2429),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  fontStyle: FontStyle.normal,
                                ),
                                otherUsersTextStyle: GoogleFonts.getFont(
                                  'DM Sans',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                                inputHintTextStyle: GoogleFonts.getFont(
                                  'DM Sans',
                                  color: Color(0xFF95A1AC),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                                inputTextStyle: GoogleFonts.getFont(
                                  'DM Sans',
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                                // emptyChatWidget: Center(
                                //   child: Image.asset(
                                //     'assets/images/Rectangle_154.jpg',
                                //     width: MediaQuery.of(context).size.width,
                                //     fit: BoxFit.cover,
                                //   ),
                                // ),
                              )
                            : Center(
                                child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              ),
                      ),
                    ),
                  ),
                );
              });
        });
  }
}
