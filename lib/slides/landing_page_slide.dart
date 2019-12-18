import 'package:flutter_floripa_1/showcase/landing_page.dart';
import 'package:flutter_floripa_1/widgets/background.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:flutter/material.dart';

class LandingPageSlide extends SlideBase {
  @override
  Widget background() => const Background();

  @override
  Widget title(BuildContext context) => const SlideTitle('Website');

  @override
  Widget body(BuildContext context) {
    return LandingPage();
  }
}
