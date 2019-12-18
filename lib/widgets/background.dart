import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background() : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: CustomPaint(
              size: Size(300, 300),
              painter: _BackgroundPainter(),
            ),
          ),
        ],
      ),
    );
  }
}

class _BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lineP1 = Offset(-500, 300);
    final lineP2 = Offset(500, -500);
    final linePaint = Paint()
      ..color = Color(0xFF0175C2)
      ..strokeWidth = 500.0;

    canvas.drawLine(lineP1, lineP2, linePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
