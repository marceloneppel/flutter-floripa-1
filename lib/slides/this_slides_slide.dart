import 'dart:html' as html;
import 'dart:js' as js;

import 'package:flutter_floripa_1/res/images.dart';
import 'package:flutter_floripa_1/widgets/background.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:flutter/material.dart';

class ThisSlidesSlide extends SlideBase {
  @override
  Widget background() => const Background();

  @override
  Widget title(BuildContext context) => const SlideTitle('Estes Slides');

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ConstrainedBox(
            child: Image.asset(Images.thisSlides),
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.5,
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          RaisedButton(
            child: Text("Clique aqui"),
            onPressed: () {
              String externalUrl = 'https://flutter.dev';
              html.window.alert("You're being redirected to \n $externalUrl");
              js.context.callMethod("open", [externalUrl]);
            },
          ),
        ],
      ),
    );
  }
}
