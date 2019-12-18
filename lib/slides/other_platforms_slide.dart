import 'package:flutter_floripa_1/res/images.dart';
import 'package:flutter_floripa_1/widgets/background.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:flutter/material.dart';

class OtherPlatformsSlide extends SlideBase {
  @override
  Widget background() => const Background();

  @override
  Widget title(BuildContext context) =>
      const SlideTitle('Flutter em outras Plataformas');

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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Topic(
                  'Internet of Things (IoT)',
                ),
                TopicSpace(space: 60),
                Topic(
                  'Fuchsia OS',
                ),
                TopicSpace(space: 60),
                Topic(
                  'Ambient Computing',
                ),
                SizedBox(
                  height: 100.0,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ConstrainedBox(
                  child: Image.asset(Images.arduino),
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.2,
                  ),
                ),
                ConstrainedBox(
                  child: Image.asset(Images.fuchsia),
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.2,
                  ),
                ),
                ConstrainedBox(
                  child: Image.asset(Images.raspberryPi),
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.2,
                  ),
                ),
                SizedBox(
                  height: 100.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
