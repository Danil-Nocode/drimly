import 'package:drimly/auth/auth_util.dart';
import 'package:drimly/components/audio_service.dart';
import 'package:just_audio_background/just_audio_background.dart';

import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
// This is a minimal example demonstrating a play/pause button and a seek bar.
// More advanced examples demonstrating other features can be found in the same
// directory as this example in the GitHub repository.

import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'common.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AudioPlayerWidget extends StatefulWidget {
  const AudioPlayerWidget({
    Key? key,
    this.audio,
    required this.player,
  }) : super(key: key);

  final AudiosRecord? audio;
  final AudioPlayer player;

  @override
  _AudioPlayerWidgetState createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  @override
  void initState() {
    super.initState();
    widget.player.stop();
    initPlayer();
  }

  void initPlayer() async {
    await widget.player.setUrl(widget.audio!.audio!);
  }

  @override
  Widget build(BuildContext context) {
    //print(widget.player.seek(position));
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () async {
            await widget.player
                .seek(Duration(seconds: widget.player.position.inSeconds - 10));
          },
          child: Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: Color.fromARGB(179, 209, 209, 209),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.replay_10,
              size: 28,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
          child: StreamBuilder<PlayerState>(
            stream: widget.player.playerStateStream,
            builder: (context, snapshot) {
              final playerState = snapshot.data;
              final processingState = playerState?.processingState;
              final playing = playerState?.playing;
              if (processingState == ProcessingState.loading ||
                  processingState == ProcessingState.buffering) {
                return Container(
                  margin: const EdgeInsets.all(8.0),
                  width: 32.0,
                  height: 32.0,
                  child: const CircularProgressIndicator(),
                );
              } else if (playing != true) {
                AudioSource.uri(
                  Uri.parse(
                    widget.audio!.audio!,
                  ),
                  tag: MediaItem(
                    // Specify a unique ID for each media item:
                    id: '1',
                    // Metadata to display in the notification:
                    album: "Медитации Елены Друма",
                    title: widget.audio!.title!,
                    artUri: Uri.parse(widget.audio!.cover!),
                  ),
                );
                return Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(179, 209, 209, 209),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.play_arrow),
                    iconSize: 60.0,
                    color: Colors.white,
                    onPressed: widget.player.play,
                  ),
                );
              } else if (processingState != ProcessingState.completed) {
                return Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(179, 209, 209, 209),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.pause),
                    iconSize: 60.0,
                    color: Colors.white,
                    onPressed: widget.player.pause,
                  ),
                );
              } else {
                return Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(179, 209, 209, 209),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.replay),
                    iconSize: 60.0,
                    color: Colors.white,
                    onPressed: () => widget.player.seek(Duration.zero),
                  ),
                );
              }
            },
          ),
        ),
        InkWell(
          onTap: () async {
            await widget.player
                .seek(Duration(seconds: widget.player.position.inSeconds + 10));
          },
          child: Container(
            width: 46,
            height: 46,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromARGB(179, 209, 209, 209),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.forward_10,
              size: 28,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
