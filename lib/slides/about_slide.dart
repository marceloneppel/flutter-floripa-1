import 'package:flutter_floripa_1/res/images.dart';
import 'package:flutter_floripa_1/widgets/background.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:flutter/material.dart';

class AboutSlide extends SlideBase {
  @override
  Widget background() => const Background();

  @override
  Widget title(BuildContext context) =>
      const SlideTitle('Marcelo Henrique Neppel');

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 60.0, right: 60),
            child: Column(
              children: <Widget>[
                ConstrainedBox(
                  child: Image.asset(Images.me),
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.5,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Topic(
                  'Bacharel em Sistemas de Informação',
                  subtopics: [
                    Subtopic(text: 'UDESC CEPLAN'),
                    Subtopic(text: 'São Bento do Sul'),
                  ],
                ),
                TopicSpace(space: 60),
                Topic(
                  'Analista de Sistemas na Neoway Business Solutions',
                ),
                TopicSpace(space: 60),
                Topic(
                  'Contatos:',
                  subtopics: [
                    Subtopic(text: 'Email: marcelo.neppel@gmail.com'),
                    Subtopic(text: 'GitHub: @marceloneppel'),
                    Subtopic(text: 'Medium: @marceloneppel'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
