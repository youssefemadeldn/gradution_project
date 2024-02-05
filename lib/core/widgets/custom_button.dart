import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final Color color;
  const CustomButton({
    super.key,
    this.onTap,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            text,
            style: Styles.style22,
          ),
        ),
      ),
    );
  }
}