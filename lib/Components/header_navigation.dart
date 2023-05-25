import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderNavigation extends StatelessWidget {
  final String textSvg;
  final String textHead;

  const HeaderNavigation({
    super.key,
    required this.textSvg,
    required this.textHead,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.h),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(
              textSvg,
              semanticsLabel: 'My SVG Image',
              height: 20,
              width: 20,
            ),
          ),
          SizedBox(width: 15.w),
          Text(
            textHead,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
