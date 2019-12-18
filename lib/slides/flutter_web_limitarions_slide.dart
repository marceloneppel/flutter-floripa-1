import 'package:flutter_floripa_1/widgets/background.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:flutter/material.dart';

class FlutterWebLimitationsSlide extends SlideBase {
  @override
  Widget background() => const Background();

  @override
  Widget title(BuildContext context) =>
      const SlideTitle('Flutter Web - Limitações');

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
                  'Ainda não recomendado para deploy em produção (está em beta)',
                ),
                TopicSpace(space: 60),
                Topic(
                  'Debug limitado ao Chrome',
                ),
                TopicSpace(space: 60),
                Topic(
                  'Necessita configuração extra',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
