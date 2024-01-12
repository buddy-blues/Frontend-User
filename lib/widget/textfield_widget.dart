import 'package:flutter/material.dart';

import '../theme/theme_textstyle.dart';

class TextfieldWidget extends StatelessWidget {
  final String title;
  final String labelTextField;
  final bool isEnabled;
  const TextfieldWidget(
      {super.key, required this.title, required this.labelTextField, required this.isEnabled,});

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
        TextField(
          decoration: InputDecoration(
            enabled: isEnabled,
            hintText: labelTextField,
            contentPadding: const EdgeInsets.all(15),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(8))),
          ),
        ),
      ],
    );
  }
}
