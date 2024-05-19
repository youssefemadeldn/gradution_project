import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_appBar.dart';

class ExamsScheduleView extends StatelessWidget {
  static String id = 'ExamsScheduleView';
  const ExamsScheduleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
    );
  }
}
