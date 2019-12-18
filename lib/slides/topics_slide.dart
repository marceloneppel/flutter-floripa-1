import 'package:flutter_floripa_1/res/images.dart';
import 'package:flutter_floripa_1/widgets/background.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:flutter/material.dart';

class TopicsSlide extends SlideBase {
  @override
  Widget background() => const Background();

  @override
  Widget title(BuildContext context) => const SlideTitle('Tópicos');

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
                  '\u2022 Flutter',
                ),
                TopicSpace(space: 60),
                Topic(
                  '\u2022 Flutter Desktop',
                ),
                TopicSpace(space: 60),
                Topic(
                  '\u2022 Flutter Web',
                ),
                TopicSpace(space: 60),
                Topic(
                  '\u2022 Flutter em outras Plataformas',
                ),
                TopicSpace(space: 60),
                Topic(
                  '\u2022 Links',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120.0),
            child: Column(
              children: <Widget>[
                ConstrainedBox(
                  child: Image.asset(Images.devices),
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.4,
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
