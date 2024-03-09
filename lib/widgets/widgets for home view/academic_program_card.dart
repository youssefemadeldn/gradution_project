import 'package:flutter/material.dart';

class AcademicProgramCard extends StatelessWidget {
  final String image;
  final String title;
  const AcademicProgramCard({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PhysicalModel(
        elevation: 10,
        shape: BoxShape.rectangle,
        // shadowColor: Colors.grey,
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              Image.asset(
                image,
                height: 99,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 6, left: 6, top: 8),
                child: Text(
                  title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
