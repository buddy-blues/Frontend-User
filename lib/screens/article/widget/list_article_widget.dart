import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';

class ListArticleWidget extends StatelessWidget {
  final String title;
  final String desc;
  final String published;
  final String image;
  final Function() onTap;

  const ListArticleWidget({
    super.key,
    required this.title,
    required this.desc,
    required this.published,
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
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: Image.network(
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
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        desc,
                        style: ThemeText().robotoRegular12.copyWith(
                              color: ThemeColor().neutral900,
                            ),
                      ),
                      Text(
                        published,
                        style: ThemeText().robotoRegular12.copyWith(
                              color: ThemeColor().neutral900,
                            ),
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
