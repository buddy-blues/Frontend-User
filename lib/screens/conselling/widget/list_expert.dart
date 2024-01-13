import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/la.dart';

class ListtExpertWidget extends StatelessWidget {
  final String btnTitle;
  final Color btnColor;
  const ListtExpertWidget({
    super.key,
    required this.btnTitle,
    required this.btnColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: SizedBox(
              height: 100,
              width: 90,
              child: Image.network(
                "https://i.pinimg.com/originals/05/0a/51/050a511d3d5a5ba0d66aec2a8e7e9ad0.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rotin S.Psi., M.Psi.",
                  style: ThemeText().robotoSmallBold,
                ),
                Text(
                  "Clinic Psychologist for 5 years",
                  style: ThemeText().robotoRegular14,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.edit_calendar_outlined,
                          color: ThemeColor().orange,
                        ),
                        const SizedBox(width: 5),
                        const Text("Available")
                      ],
                    ),
                    const SizedBox(width: 50),
                    Row(
                      children: [
                        Iconify(
                          La.dollar_sign,
                          color: ThemeColor().orange,
                        ),
                        const SizedBox(width: 5),
                        const Text("12"),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 35,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/detailexpert');
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(7),
                            primary: btnColor,
                            onPrimary: Colors.black,
                          ),
                          child: SizedBox(
                            height: 36,
                            child: Center(
                              child: Text(
                                btnTitle,
                                style: ThemeText().robotoSmall,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
