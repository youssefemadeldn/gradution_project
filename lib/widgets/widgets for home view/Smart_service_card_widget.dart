import 'package:flutter/material.dart';

class SmartServiceCard extends StatelessWidget {
  final String image;
  final String title;
  const SmartServiceCard({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 130),
      child: PhysicalModel(
        elevation: 10,
        shape: BoxShape.rectangle,
        // shadowColor: Colors.grey,
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                child: Image.asset(
                  image,
                  height: 99,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
