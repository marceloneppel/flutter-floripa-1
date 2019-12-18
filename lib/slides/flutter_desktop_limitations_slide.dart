import 'package:flutter_floripa_1/res/images.dart';
import 'package:flutter_floripa_1/widgets/background.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:flutter/material.dart';

class FlutterDesktopLimitationsSlide extends SlideBase {
  @override
  Widget background() => const Background();

  @override
  Widget title(BuildContext context) =>
      const SlideTitle('Flutter Desktop - Limitações');

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
                  'Versão preview (alpha para Mac)',
                ),
                TopicSpace(space: 60),
                Topic(
                  'Necessita configuração extra',
                ),
                TopicSpace(space: 60),
                Topic(
                  'Poucos plugins',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120.0),
            child: Column(
              children: <Widget>[
                ConstrainedBox(
                  child: Image.asset(Images.flutterDesktopLimitations),
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
