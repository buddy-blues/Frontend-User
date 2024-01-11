import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:flutter/material.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/fa_regular.dart';
import 'package:iconify_flutter/icons/fluent_emoji_high_contrast.dart';
import 'package:iconify_flutter/icons/la.dart';
import 'package:iconify_flutter/icons/majesticons.dart';
import 'package:iconify_flutter/icons/ph.dart';

class MoodTrackWidget extends StatelessWidget {
  const MoodTrackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "How are you feeling today ?",
          style: ThemeText()
              .robotoSmallSemiBold
              .copyWith(color: ThemeColor().neutral900),
        ),
        const SizedBox(height: 11),
        SizedBox(
          height: 73,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MoodContainerWidget(
                color: ThemeColor().purple,
                icon: const Iconify(FluentEmojiHighContrast.loudly_crying_face),
                title: "Very Sad",
                onTap: () {
                  Navigator.pushNamed(context, "/moodRespon",
                      arguments: "Very Sad");
                },
              ),
              MoodContainerWidget(
                color: ThemeColor().bluePrimary100,
                icon: const Iconify(Majesticons.emoji_sad_line),
                title: "Sad",
                onTap: () {
                  Navigator.pushNamed(context, "/moodRespon", arguments: "Sad");
                },
              ),
              MoodContainerWidget(
                color: ThemeColor().ligthBlue2,
                icon: const Iconify(Ph.smiley_meh_bold),
                title: "So So",
                onTap: () {
                  Navigator.pushNamed(context, "/moodRespon",
                      arguments: "So So");
                },
              ),
              MoodContainerWidget(
                color: ThemeColor().green,
                icon: const Iconify(La.smile_beam),
                title: "Happy",
                onTap: () {
                  Navigator.pushNamed(context, "/moodRespon",
                      arguments: "Happy");
                },
              ),
              MoodContainerWidget(
                color: ThemeColor().yellow,
                icon: const Iconify(FaRegular.laugh_beam),
                title: "So Happy",
                onTap: () {
                  Navigator.pushNamed(context, "/moodRespon",
                      arguments: "So Happy");
                },
              )
            ],
          ),
        )
      ],
    );
  }
}

class MoodContainerWidget extends StatelessWidget {
  final Color color;
  final Iconify icon;
  final String title;
  final Function() onTap;
  const MoodContainerWidget(
      {super.key,
      required this.color,
      required this.icon,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: icon,
          ),
          const SizedBox(height: 3),
          Text(
            title,
            style: ThemeText()
                .robotoMedium12
                .copyWith(color: ThemeColor().neutral900),
          )
        ],
      ),
    );
  }
}
