import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

AppBar CustomAppBar() {
  return AppBar(
    backgroundColor: kPrimaryColor,
    automaticallyImplyLeading: false,
    title: Row(
      children: [
        const SizedBox(
          width: 13,
        ),
        const Text(
          'جامعة بنها',
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
          kAppName,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
