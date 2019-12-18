import 'package:flutter_floripa_1/widgets/background.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:flutter/material.dart';

class LinksSlide extends SlideBase {
  @override
  Widget background() => const Background();

  @override
  Widget title(BuildContext context) => const SlideTitle('Links');

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Topic(
                  'https://github.com/romaomb/flutter_slides',
                ),
                TopicSpace(space: 60),
                Topic(
                  'https://itsallwidgets.com',
                ),
                TopicSpace(space: 60),
                Topic(
                  'https://flutter.github.io/samples',
                ),
                TopicSpace(space: 60),
                Topic(
                  'https://www.widgetmaker.dev',
                ),
                TopicSpace(space: 60),
                Topic(
                  'https://github.com/modulovalue/flutter_beat_sequencer',
                ),
                TopicSpace(space: 60),
                Topic(
                  'https://dartpad.dartlang.org/flutter',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
