import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_appBar.dart';

class RegisterASearchPoint extends StatelessWidget {
  static String id = 'RegisterASearchPoint';
  const RegisterASearchPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: const Center(child: Text("Pending....")),
    );
  }
}
