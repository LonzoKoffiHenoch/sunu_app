import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextHomeDetail extends StatelessWidget {
  const TextHomeDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Opération Réussie',
          style: TextStyle(color: Color(0xFFC7193D), fontSize: 30),
        ),
        SizedBox(height: 20.h),
        const Text(
          'Votre relevé bancaire pour la période du',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        const Text(
          '01 janvier 2023 au 31 mars 2023',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const Text(
          'est maintenant disponible.',
          style: TextStyle(
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
