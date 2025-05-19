import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../commons/commons.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    super.key,
    required this.width,
    required this.height,
    required this.icon,
    required this.onPressed,
  });

  final double width;
  final double height;
  final String icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.borderColor),
          shape: BoxShape.circle,
          color: AppColors.backgroundColorLight,
        ),
        width: width,
        height: height,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(icon),
        ),
      ),
    );
  }
}
