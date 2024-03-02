import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: kPrimaryColor,
      radius: 40,
      child: Icon(
        Icons.person,
        size: 50,
      ),
    );
  }
}
