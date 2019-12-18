import 'package:flutter/material.dart';
import 'package:flutter_floripa_1/res/images.dart';
import 'package:flutter_floripa_1/widgets/background.dart';
import 'package:flutter_slides/flutter_slides.dart';

class ThanksSlide extends SlideBase {
  @override
  Widget background() => const Background();

  @override
  Widget title(BuildContext context) => SlideTitle('Obrigado!');

  @override
  Widget body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60.0, right: 60.0),
              child: Column(
                children: <Widget>[
                  ConstrainedBox(
                    child: Image.asset(Images.thanks),
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.4,
                    ),
                  ),
                ],
              ),
            ),
            TopicBox(
              flex: 0,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 30.0),
              topics: [
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
          ],
        ),
      ],
    );
  }
}
