import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/fluent_emoji_high_contrast.dart';
import 'package:iconify_flutter/icons/la.dart';

class MoodHistoryWidget extends StatelessWidget {
  const MoodHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: const EdgeInsets.only(
          right: 20,
          top: 11,
          bottom: 11,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ListTile(
          title: Text(
            "Really Bad",
            style: ThemeText().robotoMedium20,
          ),
          subtitle: Text(
            "04 January 2024",
            style: ThemeText().robotoRegular14,
          ),
          leading: const SizedBox(
            height: 33,
            width: 33,
            child: Iconify(
              FluentEmojiHighContrast.loudly_crying_face,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }
}
