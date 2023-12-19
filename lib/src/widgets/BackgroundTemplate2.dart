import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class BackgroundTemplate2 extends StatelessWidget {
  final Widget child;
  final Widget bottomNavigationBar;

  const BackgroundTemplate2({
    Key? key,
    required this.child,
    this.bottomNavigationBar = const SizedBox.shrink(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Añade un color de fondo a la Stack
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset('assets/svg/Ellipse2.svg'),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset('assets/svg/Ellipse4.svg'),
          ),
          child,
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: bottomNavigationBar,
          ),
        ],
      ),
    );
  }
}
