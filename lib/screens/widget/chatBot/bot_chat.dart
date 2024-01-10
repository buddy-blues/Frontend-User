import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';

class BotBubleChatWidget extends StatelessWidget {
  final String message;
  const BotBubleChatWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 60, top: 20),
      child: Align(
        alignment: Alignment.topLeft,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/icons/robot.png"),
            ),
            const SizedBox(width: 10),
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 150,
                  key: const Key("chat"),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    color: ThemeColor().bluePrimary100,
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
          ],
        ),
      ),
    );
  }
}
