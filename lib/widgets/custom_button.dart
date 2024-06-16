import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final bool isLoading;
  Color color;
  double width;
  CustomButton({
    super.key,
    this.onTap,
    required this.text,
    this.isLoading = false,
    this.color = Colors.white,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xff34a853),
          borderRadius: BorderRadius.circular(15),
        ),
        child: isLoading
            ? const Center(child: CircularProgressIndicator())
            : Center(
                child: Text(
                  text,
                  style: Styles.style22,
                ),
              ),
      ),
    );
  }
}
