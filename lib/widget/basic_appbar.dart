import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';

class BasicAppbar extends StatelessWidget {
  final String title;
  const BasicAppbar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: ThemeColor().bluePrimary500,
        centerTitle: true,
        title: Text(
          title,
          style: ThemeText().robotoMedium.copyWith(color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      );
  }
}
