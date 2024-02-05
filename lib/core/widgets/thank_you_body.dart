import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/background_of_thank_you_card.dart';
import 'package:flutter_application_1/core/widgets/custom_check_icon.dart';
import 'package:flutter_application_1/core/widgets/custom_dashed_line.dart';
import 'package:flutter_svg/svg.dart';

class ThankYouBody extends StatelessWidget {
  const ThankYouBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100, right: 20, left: 20, bottom: 20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -35,
            child: SvgPicture.asset('assets/images/arrow.svg'),
          ),
          const BackgroundOfThankYouCard(),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .2,
            left: -20,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .2,
            right: -20,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
            right: 0,
            left: 0,
            top: -50,
            child: CustomCheckIcon(),
          ),
          Positioned(
            // bottom: 0,
            bottom: MediaQuery.sizeOf(context).height * .2 + 20,
            left: 16 + 12,
            right: 16 + 12,
            child: const CustomDashedLine(),
          ),
        ],
      ),
    );
  }
}
