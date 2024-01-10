import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CurrentModuleWidget extends StatelessWidget {
  const CurrentModuleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Current Modul",
          style: ThemeText().robotoSmallSemiBold.copyWith(
                color: ThemeColor().neutral900,
              ),
        ),
        const SizedBox(height: 10),
        Container(
          width: 115,
          height: 148,
          decoration: BoxDecoration(
            border: Border.all(color: ThemeColor().grey2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Column(
              children: [
                SizedBox(
                  height: 85,
                  child: Image.asset(
                    'assets/images/pregnant_mom.png',
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "Pregnancy",
                        style: ThemeText()
                            .poppinsMedium12
                            .copyWith(color: ThemeColor().neutral900),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 3),
                      child: Text(
                        "Subtitle",
                        style: ThemeText()
                            .poppinsRegular8
                            .copyWith(color: ThemeColor().neutral900),
                      ),
                    ),
                    const SizedBox(height: 3),
                    LinearPercentIndicator(
                      barRadius: const Radius.circular(30),
                      width: 110,
                      lineHeight: 11,
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
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
