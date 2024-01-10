import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class OnboardingBottomWidget extends StatelessWidget {
  final int dotsCount;
  final int dotsPosition;
  final Function()? onPressed;
  const OnboardingBottomWidget({
    super.key,
    required this.dotsCount,
    required this.dotsPosition,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DotsIndicator(
              decorator: DotsDecorator(
                activeColor: ThemeColor().bluePrimary800,
              ),
              dotsCount: dotsCount,
              position: dotsPosition,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/start", (route) => false);
              },
              child: Text(
                "Skip",
                style: ThemeText()
                    .robotoRegular
                    .copyWith(color: ThemeColor().bluePrimary800),
              ),
            )
          ],
        ),
        IconButton(
          onPressed: onPressed,
          icon: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
              color: ThemeColor().bluePrimary800,
            ),
          ),
        )
      ],
    );
  }
}
