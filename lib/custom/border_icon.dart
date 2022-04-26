import 'package:flutter/material.dart';
import 'package:ui_task_1/utils/constants.dart';

class BorderIcon extends StatelessWidget {
  final Widget child;
  final double height, width;

  const BorderIcon(
      {Key? key,
      required this.child,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        color: COLOR_WHITE,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}