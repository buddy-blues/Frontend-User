import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';

class BuddyBluesAppBar extends StatelessWidget {
  const BuddyBluesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ThemeColor().bluePrimary500,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "BuddyBlues",
              style: ThemeText().robotoMedium.copyWith(color: Colors.white),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.help_outline,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      );
  }
}