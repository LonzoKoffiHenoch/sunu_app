import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sunu_app/Components/conatiner_border.dart';
import 'package:sunu_app/Components/header_navigation.dart';
import 'package:sunu_app/screens/home/my_screen.dart';

import '../../Components/buttom_wid.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);
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
              textHead: 'Mot de passe',
              textSvg: 'assets/svg/back.svg',
            ),
            SizedBox(height: 24.h),
            ContainerBorder(
              child: Column(
                children: [
                  SizedBox(height: 80.h),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0.w, right: 15.w),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 30.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: const Color(0xFFBD173A),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/svg/cadenas.svg',
                                  width: 20.0,
                                  height: 20.0,
                                  // ignore: deprecated_member_use
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 15.w),
                            const Text(
                              'Mot de Passe',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 30.h),
                        Column(
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'Ancien mot de passe',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF6E7582),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: const TextField(
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 16.0,
                                    horizontal: 12.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        Column(
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'Nouveau mot de passe',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF6E7582),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: const TextField(
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 16.0,
                                    horizontal: 12.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        Column(
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'Confirmer le mot de passe',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Color(
                                      0xFF6E7582,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: const TextField(
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 16.0,
                                    horizontal: 12.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 215.5.h),
                        ButtomWid(
                          text: 'Mettre à jour',
                          action: (() => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MyScreen(),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
