import 'package:flutter/material.dart';

class SmartServiceCard extends StatelessWidget {
  const SmartServiceCard({
    super.key,
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
                  'assets/images/1.png',
                  height: 99,
                ),
              ),
              const Text(
                '''    الإعلانات ومواعيد
           السمينارات          ''',
                style: TextStyle(
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
