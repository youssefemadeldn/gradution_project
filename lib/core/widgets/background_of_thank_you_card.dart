import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/styles.dart';
import 'package:flutter_application_1/core/widgets/card_info_widget.dart';
import 'package:flutter_application_1/core/widgets/paid_widget.dart';
import 'package:flutter_application_1/core/widgets/payment_item_info.dart';
import 'package:flutter_application_1/widgets/p_total_price_widget.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BackgroundOfThankYouCard extends StatelessWidget {
  const BackgroundOfThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 26, left: 23, right: 23),
        child: Column(
          children: [
            const Text(
              'Thank You!',
              style: Styles.style25,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: Styles.style20,
            ),
            const SizedBox(
              height: 42,
            ),
            const PaymentItemInfo(
              title: 'Date',
              value: '01/24/2023',
            ),
            const SizedBox(
              height: 20,
            ),
            const PaymentItemInfo(
              title: 'Time',
              value: '10:15 AM',
            ),
            const SizedBox(
              height: 20,
            ),
            const PaymentItemInfo(
              title: 'To',
              value: 'Sam Louis',
            ),
            const Divider(
              thickness: 2,
              color: Color(0XFFC7C7C7),
              height: 60,
            ),
            const TotalPriceWidget(title: 'Total', value: '\$50.97'),
            const SizedBox(
              height: 55,
            ),
            const CardInfoWidget(),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  FontAwesomeIcons.barcode,
                  size: 50,
                ),
                PaidWidget(),
              ],
            ),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * .2 + 20) / 2 - 29),
            )
          ],
        ),
      ),
    );
  }
}
