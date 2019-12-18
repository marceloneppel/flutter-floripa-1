import 'package:flutter/material.dart';
import 'package:vr_landing/main.dart' as vr_landing;

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      child: vr_landing.MyApp(),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.75,
      ),
    );
  }
}
