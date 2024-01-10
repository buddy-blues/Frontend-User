import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';

class HeaderMenuWidget extends StatelessWidget {
  final String title;
  final Function() onTap;
  const HeaderMenuWidget({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: ThemeText().robotoSmallSemiBold.copyWith(
                color: ThemeColor().neutral900,
              ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Text(
                "Show all",
                style: ThemeText().robotoSmallBold12.copyWith(
                      color: ThemeColor().bluePrimary300,
                    ),
              ),
              const SizedBox(width: 10),
              CircleAvatar(
                backgroundColor: ThemeColor().bluePrimary300,
                radius: 10,
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 10,
                  color: Colors.white,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
