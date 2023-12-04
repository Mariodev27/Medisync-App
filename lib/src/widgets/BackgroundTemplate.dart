import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class BackgroundTemplate extends StatelessWidget {
  final Widget child;

  const BackgroundTemplate({super.key, required this.child});

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
          Align(
            alignment: Alignment.bottomRight,
            child: Transform.rotate(
              angle: 180 * 3.1416 / 180,
              child: SvgPicture.asset('assets/svg/Ellipse4.svg'),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Transform.rotate(
              angle: 180 * 3.1416 / 180,
              child: SvgPicture.asset('assets/svg/Ellipse2.svg'),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
