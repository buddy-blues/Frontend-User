import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';

class MainButtonWidget extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  final bool isEnabled;

  const MainButtonWidget(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.isEnabled});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: (isEnabled == true ? onPressed : null),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(8),
              primary: (isEnabled == true
                  ? ThemeColor().bluePrimary500
                  : Colors.grey[100]),
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
