import 'package:flutter/cupertino.dart';
import 'package:flutter_floripa_1/res/images.dart';
import 'package:flutter_floripa_1/widgets/background.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:flutter/material.dart';

class WelcomeSlide extends SlideBase {
  @override
  Widget background() => const Background();

  @override
  Widget body(BuildContext context) {
    final titleStyle = TextStyle(
      fontSize: 72.0,
      color: Colors.blue,
    );

    return Container(
      padding: const EdgeInsets.only(top: 80.0),
      alignment: Alignment.topCenter,
      child: Column(
        children: <Widget>[
          Text(
            "Flutter além do Mobile",
            style: titleStyle,
          ),
          SizedBox(height: 10.0),
          Text(
            "Apps Desktop e Web",
            textAlign: TextAlign.center,
            style: titleStyle,
          ),
          SizedBox(height: 75.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                Images.linux,
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              SizedBox(width: 25.0),
              Image.asset(
                Images.macos,
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              SizedBox(width: 25.0),
              Image.asset(
                Images.windows,
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              SizedBox(width: 150.0),
              Image.asset(
                Images.chrome,
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              SizedBox(width: 25.0),
              Image.asset(
                Images.firefox,
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              SizedBox(width: 25.0),
              Image.asset(
                Images.opera,
                width: MediaQuery.of(context).size.width * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget title(BuildContext context) {
    return Container();
  }
}
