import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';

class MainButtonWidget extends StatelessWidget {
  final String title;
  final Function()? onPressed;

  const MainButtonWidget({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(8),
              primary: ThemeColor().bluePrimary500,
              onPrimary: Colors.white,
            ),
            child: SizedBox(
              height: 36,
              child: Center(
                  child: Text(
                title,
                style: ThemeText().robotoRegular,
              )),
            ),
          ),
        ),
      ],
    );
  }
}
