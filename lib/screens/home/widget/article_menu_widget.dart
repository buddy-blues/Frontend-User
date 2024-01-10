import 'package:buddy_blues/screens/home/widget/header_menu.dart';
import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';

class ArticleMenuWidget extends StatelessWidget {
  const ArticleMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderMenuWidget(
          title: "Article",
          onTap: () {
            Navigator.pushNamed(context, "/article");
          },
        ),
        const SizedBox(height: 10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardArticleWidget(),
            CardArticleWidget(),
          ],
        )
      ],
    );
  }
}

class CardArticleWidget extends StatelessWidget {
  const CardArticleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 60) / 2,
      height: 148,
      decoration: BoxDecoration(
        border: Border.all(color: ThemeColor().grey2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              width: (MediaQuery.of(context).size.width - 60) / 2,
              child: Image.asset(
                'assets/images/pregnant_mom.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pregnancy",
                    style: ThemeText()
                        .poppinsMedium12
                        .copyWith(color: ThemeColor().neutral900),
                  ),
                  Text(
                    "Subtitle",
                    style: ThemeText()
                        .poppinsRegular8
                        .copyWith(color: ThemeColor().neutral900),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
