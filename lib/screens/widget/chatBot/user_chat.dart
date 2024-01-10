import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';

class UserBubleChatWidget extends StatelessWidget {
  final String message;
  const UserBubleChatWidget({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 90, top: 20),
      child: Align(
        alignment: Alignment.topRight,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 160,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    color: ThemeColor().secondary300,
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    message,
                    style: ThemeText()
                        .robotoRegular12
                        .copyWith(color: ThemeColor().neutral900),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(height: 25)
              ],
            ),
            const SizedBox(width: 10),
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile.png"),
            ),
          ],
        ),
      ),
    );
  }
}
