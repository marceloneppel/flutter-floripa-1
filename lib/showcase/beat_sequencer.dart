import 'package:flutter/material.dart';
import 'package:flutter_beat_sequencer/main.dart' as flutter_beat_sequencer;

class BeatSequencer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      child: flutter_beat_sequencer.MyApp(),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.9,
      ),
    );
  }
}
