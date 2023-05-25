import 'package:flutter/material.dart';

class ButtomWid extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback? action;
  const ButtomWid({super.key, required this.text, Color? color, this.action})
      : color = color ?? const Color(0xFFC7193D);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(5))),
          child: TextButton(
            onPressed: action,
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
