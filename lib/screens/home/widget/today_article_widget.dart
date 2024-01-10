import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';

class TodayArticleWidget extends StatelessWidget {
  const TodayArticleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 17, left: 17, right: 17),
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
          color: ThemeColor().bluePrimary50,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Today's Article",
            style: ThemeText().robotoSmallBold,
          ),
          Text(
            "When Father Get the Baby Blues",
            style: ThemeText().robotoMedium20,
          )
        ],
      ),
    );
  }
}
