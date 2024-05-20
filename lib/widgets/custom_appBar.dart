import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

AppBar CustomAppBar() {
  return AppBar(
    backgroundColor: kPrimaryColor,
    automaticallyImplyLeading: true,
    title: Row(
      children: [
        const SizedBox(
          width: 70,
        ),
        const Text(
          '',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const SizedBox(
          width: 10,
        ),
        Image.asset(
          kLogo,
          width: 100,
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          '',
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
