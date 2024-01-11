import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';

class ListModuleWidget extends StatelessWidget {
  final String title;
  final String desc;
  final String image;
  final Function() onTap;
  const ListModuleWidget({
    super.key,
    required this.title,
    required this.desc,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(18),
            height: 117,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
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
                    width: 72.96,
                    height: 80,
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 21),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: ThemeText().robotoMedium20,
                      ),
                      Text(
                        desc,
                        style: ThemeText().robotoRegular12.copyWith(
                              color: ThemeColor().neutral900,
                            ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 12)
      ],
    );
  }
}
