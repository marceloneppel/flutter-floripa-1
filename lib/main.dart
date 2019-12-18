import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floripa_1/app.dart';
import 'package:flutter_floripa_1/slides/aqueduct_slide.dart';
import 'package:flutter_floripa_1/slides/beat_sequencer_slide.dart';
import 'package:flutter_floripa_1/slides/codemagic_slide.dart';
import 'package:flutter_floripa_1/slides/dart_pad_slide.dart';
import 'package:flutter_floripa_1/slides/dart_vs_js_slide.dart';
import 'package:flutter_floripa_1/slides/flutter_desktop_app_slide.dart';
import 'package:flutter_floripa_1/slides/flutter_desktop_go_slide.dart';
import 'package:flutter_floripa_1/slides/flutter_desktop_limitations_slide.dart';
import 'package:flutter_floripa_1/slides/flutter_desktop_run_slide.dart';
import 'package:flutter_floripa_1/slides/flutter_desktop_slide.dart';
import 'package:flutter_floripa_1/slides/flutter_slide.dart';
import 'package:flutter_floripa_1/slides/flutter_web_diagram_slide.dart';
import 'package:flutter_floripa_1/slides/flutter_web_limitarions_slide.dart';
import 'package:flutter_floripa_1/slides/flutter_web_plus_js_slide.dart';
import 'package:flutter_floripa_1/slides/flutter_web_run_slide.dart';
import 'package:flutter_floripa_1/slides/flutter_web_slide.dart';
import 'package:flutter_floripa_1/slides/landing_page_slide.dart';
import 'package:flutter_floripa_1/slides/links_slide.dart';
import 'package:flutter_floripa_1/slides/other_platforms_slide.dart';
import 'package:flutter_floripa_1/slides/this_slides_slide.dart';
import 'package:flutter_floripa_1/slides/topics_slide.dart';
import 'package:flutter_floripa_1/slides/widget_maker_slide.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:flutter_floripa_1/slides/about_slide.dart';
import 'package:flutter_floripa_1/slides/thanks_slide.dart';
import 'package:flutter_floripa_1/slides/welcome_slide.dart';

void main() {
  _enablePlatformOverrideForDesktop();

  final slides = _getSlides();
  final slideManager = SlideManager(slides);

  runApp(FlutterMeetup1App(slides, slideManager));
}

void _enablePlatformOverrideForDesktop() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux)) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

List<Slide> _getSlides() {
  return [
    Slide(route: WelcomeSlide()),
    Slide(route: AboutSlide()),
    Slide(route: TopicsSlide()),
    Slide(route: FlutterSlide()),
    Slide(route: FlutterDesktopSlide()),
    Slide(route: FlutterDesktopLimitationsSlide()),
    Slide(route: FlutterDesktopRunSlide()),
    Slide(route: FlutterDesktopGoSlide()),
    Slide(route: FlutterDesktopAppSlide()),
    Slide(route: WidgetMakerSlide()),
    Slide(route: CodemagicSlide()),
    Slide(route: DartVsJsSlide()),
    Slide(route: FlutterWebSlide()),
    Slide(route: FlutterWebDiagramSlide()),
    Slide(route: FlutterWebLimitationsSlide()),
    Slide(route: FlutterWebRunSlide()),
    Slide(route: FlutterWebPlusJsSlide()),
    Slide(route: AqueductSlide()),
    Slide(route: ThisSlidesSlide()),
    Slide(route: LandingPageSlide()),
    Slide(route: BeatSequencerSlide()),
    Slide(route: DartPadSlide()),
    Slide(route: OtherPlatformsSlide()),
    Slide(route: LinksSlide()),
    Slide(route: ThanksSlide()),
  ];
}
