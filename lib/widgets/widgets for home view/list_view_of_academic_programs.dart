import 'package:flutter/material.dart';

import 'package:flutter_application_1/widgets/widgets%20for%20home%20view/academic_program_card.dart';

class ListViewOfAcademicPrograms extends StatelessWidget {
  const ListViewOfAcademicPrograms({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // after smart services
      children: [
        Expanded(
          child: SizedBox(
            height: 190,
            // width: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              // reverse: true,
              // physics: NeverScrollableScrollPhysics(),
              cacheExtent: 100.0,
              children: const [
                AcademicProgramCard(
                  image: 'assets/images/11.jpg',
                  title: 'الدكتوراه',
                ),
                AcademicProgramCard(
                  image: 'assets/images/12.png',
                  title: 'الماجيستير',
                ),
                AcademicProgramCard(
                  image: 'assets/images/13.jpg',
                  title: 'الدبلومات التأهيلية',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
