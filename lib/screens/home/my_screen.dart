import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sunu_app/Components/buttom_wid.dart';
import 'package:sunu_app/Components/conatiner_border.dart';
import 'package:sunu_app/Components/header_navigation.dart';
import 'package:sunu_app/screens/home/widget/text_home_detail.dart';
import 'package:sunu_app/screens/password/reset_password.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFC7193D), Color(0xFF640D1F)],
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 67.h),
          const HeaderNavigation(
            textHead: 'Demande de relevé de compte',
            textSvg: 'assets/svg/back.svg',
          ),
          SizedBox(height: 15.h),
          Padding(
            padding: EdgeInsets.only(left: 15.0.h),
            child: const Row(
              children: [
                Text(
                  'Compte épargne',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          SizedBox(height: 4.h),
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Text(
                  '123974900072',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          SizedBox(height: 28.h),
          ContainerBorder(
            height: 637.h,
            child: Column(
              children: [
                SizedBox(height: 40.h),
                Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/svg/Homme.svg',
                            height: 300.h,
                            width: 317.w,
                          ),
                        ],
                      ),
                      SizedBox(height: 25.h),
                      const TextHomeDetail(),
                      buildPadding(context),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }

  Padding buildPadding(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 15.0,
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFC7193D),
        ),
        child: ButtomWid(
          text: 'Télécharger',
          action: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ResetPassword()),
          ),
        ),
      ),
    );
  }
}
