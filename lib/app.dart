import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';

class FlutterMeetup1App extends StatelessWidget {
  final List<Slide> slides;
  final SlideManager slideManager;

  const FlutterMeetup1App(this.slides, this.slideManager);

  @override
  Widget build(BuildContext context) {
    return SlideProvider(
      manager: slideManager,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: slides[0].route,
      ),
    );
  }
}
