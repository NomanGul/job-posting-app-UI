import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;

  const Button({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Text(text,
              style: const TextStyle(
                  color: Color(0xFF191720), fontWeight: FontWeight.w600))),
    );
  }
}
