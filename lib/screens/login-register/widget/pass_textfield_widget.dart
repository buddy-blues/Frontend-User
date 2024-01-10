import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';

class PasswordTextfieldWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? onPressed;
  final bool isHidden;

  const PasswordTextfieldWidget(
      {super.key,
      required this.title,
      required this.icon,
      required this.onPressed,
      required this.isHidden});

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
          obscureText: isHidden,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: onPressed,
              icon: Icon(isHidden ? Icons.visibility : Icons.visibility_off),
            ),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(8))),
          ),
        ),
      ],
    );
  }
}
