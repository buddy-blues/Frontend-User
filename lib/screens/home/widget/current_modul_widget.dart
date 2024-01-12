import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CurrentModuleWidget extends StatelessWidget {
  const CurrentModuleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(color: ThemeColor().grey2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 118,
              width: double.infinity,
              child: Image.asset(
                'assets/images/marriage.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Marriage",
                    style: ThemeText()
                        .robotoMedium20
                        .copyWith(color: ThemeColor().neutral900),
                  ),
                  Text(
                    "Life after marriage and having children is sometimes not as beautiful as drama. Learn about it in this module.",
                    style: ThemeText()
                        .robotoRegular12
                        .copyWith(color: ThemeColor().neutral900),
                  ),
                  const SizedBox(height: 16),
                  LinearPercentIndicator(
                    barRadius: const Radius.circular(30),
                    width: 330,
                    lineHeight: 20,
                    percent: 0.5,
                    backgroundColor: ThemeColor().secondary100,
                    progressColor: ThemeColor().secondary300,
                    center: Text(
                      "50%",
                      style: ThemeText()
                          .robotoMedium8
                          .copyWith(color: ThemeColor().neutral900),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
