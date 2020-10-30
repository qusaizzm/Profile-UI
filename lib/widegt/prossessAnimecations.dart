import 'package:flutter/material.dart';
import 'package:profile_ui/styles/colours.dart';

class ProssessAnimations extends StatefulWidget {
  final double gameProsses, screenWidth;
  final LinearGradient gredinet;

  const ProssessAnimations({
    Key key,
    @required this.gameProsses,
    @required this.screenWidth,
    @required this.gredinet,
  }) : super(key: key);
  @override
  _ProssessAnimationsState createState() => _ProssessAnimationsState();
}

class _ProssessAnimationsState extends State<ProssessAnimations>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> progressAnimation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 81600));
    progressAnimation = Tween<double>(begin: 0, end: 100 * widget.gameProsses)
        .animate(controller);
    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = widget.screenWidth;
    final gredinet = widget.gredinet;

    return AnimatedBuilder(
      animation: progressAnimation,
      builder: (context, widget) {
        return Stack(
          children: [
            Container(
              width: width,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  border: Border.all(
                    color: AppColours.kC_Dark,
                    width: 1,
                  )),
            ),
            Container(
              width: progressAnimation.value,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  gradient: gredinet),
            ),
          ],
        );
      },
    );
  }
}
