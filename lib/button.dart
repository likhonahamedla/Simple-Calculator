import 'package:flutter/material.dart';

class button extends StatelessWidget {
  String text;
  double? fontSize;
  Color? colorText;
  Color? colorButton;
  final VoidCallback onClick;
  EdgeInsets? padding;
  button({
    super.key,
    required this.onClick,
    required this.text,
    this.colorText,
    this.colorButton,
    this.fontSize,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        backgroundColor: colorButton ?? Color(0xFFF8FAFD),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        padding: padding ?? EdgeInsets.symmetric(horizontal: 35, vertical: 20),
        shadowColor: Colors.black,
        elevation: 15,
      ),
      child: SizedBox(
        height: 40,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: fontSize ?? 32,
            color: colorText ?? Colors.black,
          ),
        ),
      ),
    );
  }
}
