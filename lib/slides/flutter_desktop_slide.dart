import 'package:flutter_floripa_1/res/images.dart';
import 'package:flutter_floripa_1/widgets/background.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:flutter/material.dart';

class FlutterDesktopSlide extends SlideBase {
  @override
  Widget background() => const Background();

  @override
  Widget title(BuildContext context) => const SlideTitle('Flutter Desktop');

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
                  'Linux, Mac e Windows',
                ),
                TopicSpace(space: 60),
                Topic(
                  'Desktop shells / Embedders',
                  subtopics: [
                    Subtopic(text: 'Oficial'),
                    Subtopic(text: 'Go'),
                    Subtopic(text: 'Rust'),
                    Subtopic(text: 'Outros'),
                  ],
                ),
                TopicSpace(space: 60),
                Topic(
                  'Permite hot reload',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120.0),
            child: Column(
              children: <Widget>[
                ConstrainedBox(
                  child: Image.asset(Images.flutterDesktop),
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
