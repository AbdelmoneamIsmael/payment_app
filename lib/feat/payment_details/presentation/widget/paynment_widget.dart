import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectedPayMentWidget extends StatelessWidget {
  const SelectedPayMentWidget({
    super.key,
    required this.svgPath,
    required this.isSelected,
    this.margin,
    this.onTap,
  });
  final String svgPath;
  final bool isSelected;
  final EdgeInsetsGeometry? margin;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 106 / 64,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: isSelected
                  ? Colors.green
                  : const Color.fromARGB(255, 213, 213, 213),
            ),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.25),
                      blurRadius: 8,
                      offset: const Offset(4, 4),
                    ),
                    BoxShadow(
                      color: Colors.green.withOpacity(0.25),
                      blurRadius: 8,
                      offset: const Offset(-4, -4),
                    ),
                  ]
                : [],
            color: Colors.white,
          ),
          child: Center(
            child: SvgPicture.asset(
              svgPath,
            ),
          ),
        ),
      ),
    );
  }
}
