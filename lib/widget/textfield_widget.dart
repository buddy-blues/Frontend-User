import 'package:flutter/material.dart';

import '../theme/theme_textstyle.dart';

class TextfieldWidget extends StatelessWidget {
  final String title;
  const TextfieldWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: ThemeText().robotoRegular.copyWith(color: Colors.black),
        ),
        const SizedBox(height: 8),
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(8))),
          ),
        ),
      ],
    );
  }
}
