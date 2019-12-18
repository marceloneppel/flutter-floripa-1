import 'package:flutter_floripa_1/res/images.dart';
import 'package:flutter_floripa_1/widgets/background.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:flutter/material.dart';

class FlutterSlide extends SlideBase {
  @override
  Widget background() => const Background();

  @override
  Widget title(BuildContext context) => const SlideTitle('Flutter');

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
                  '\u2022 Android e iOS',
                ),
                TopicSpace(space: 60),
                Topic(
                  '\u2022 Dispositivos físicos e emuladores',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120.0),
            child: Column(
              children: <Widget>[
                Image.asset(Images.flutter),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
