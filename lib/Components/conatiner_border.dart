import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerBorder extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;
  const ContainerBorder({super.key, this.width, this.height, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 378.w,
      height: height ?? 697.h,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topRight: Radius.circular(80)),
      ),
      child: child,
    );
  }
}
