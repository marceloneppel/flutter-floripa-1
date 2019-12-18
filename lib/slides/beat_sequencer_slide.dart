import 'package:flutter_floripa_1/showcase/beat_sequencer.dart';
import 'package:flutter_floripa_1/widgets/background.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:flutter/material.dart';

class BeatSequencerSlide extends SlideBase {
  @override
  Widget background() => const Background();

  @override
  Widget title(BuildContext context) => const SlideTitle('Beat Sequencer');

  @override
  Widget body(BuildContext context) {
    return BeatSequencer();
  }
}
