import 'package:profile_ui/styles/colours.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as math;

class ImgRounded extends StatefulWidget {
  final isOnLine;
  final int ranking;
  final String imgPath;

  const ImgRounded({
    Key key,
    this.isOnLine,
    this.ranking,
    this.imgPath,
  }) : super(key: key);

  @override
  _ImgRoundedState createState() => _ImgRoundedState();
}

class _ImgRoundedState extends State<ImgRounded> {
  final imgSize = 120.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          height: imgSize + 8,
          child: Stack(
            children: [
              CustomPaint(
                painter: RoundedImgBorder(widget.isOnLine, 280),
                child: Container(
                  height: imgSize,
                  width: imgSize,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipOval(
                      child: Image.asset(
                        widget.imgPath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RoundedImgBorder extends CustomPainter {
  final bool isOnLine;
  final double rdun;

  RoundedImgBorder(@required this.isOnLine, @required this.rdun);

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    Paint borderpaint = Paint()
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0;
    if (isOnLine) {
      borderpaint.shader = appGredintRB.createShader(
          Rect.fromCircle(center: center, radius: size.width / 2));
    } else {
      borderpaint.color = AppColours.kC_DarkGery;
    }

    canvas.drawArc(Rect.fromCircle(center: center, radius: size.width / 2),
        math.radians(-90), math.radians(rdun), false, borderpaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
