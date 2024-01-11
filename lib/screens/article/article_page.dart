import 'package:buddy_blues/screens/article/widget/list_article_widget.dart';
import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listArticle = [
      {
        "title": "Postpartum Blues Can Hit First-Time Dads, Too",
        "desc": "HealthDay",
        "published": "Published at 10 January 2024",
        "image": "assets/images/article1.png"
      },
      {
        "title": "Everyone Can Be A Great Dad",
        "desc": "MentalNews",
        "published": "Published at 10 January 2024",
        "image": "assets/images/article2.png"
      },
      {
        "title": "What To Do if You Have Baby Blues",
        "desc": "DailyArticle",
        "published": "Published at 10 January 2024",
        "image": "assets/images/article3.png"
      },
      {
        "title": "Parenting is As Important As Yourself",
        "desc": "MotionFast",
        "published": "Published at 10 January 2024",
        "image": "assets/images/article4.png"
      }
    ];
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: ThemeColor().bluePrimary500,
          centerTitle: true,
          title: Text(
            "Articles",
            style: ThemeText().robotoMedium.copyWith(color: Colors.white),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 27),
          child: ListView.builder(
              itemCount: listArticle.length,
              itemBuilder: (context, index) {
                return ListArticleWidget(
                  title: listArticle[index]["title"],
                  desc: listArticle[index]["desc"],
                  published: listArticle[index]["published"],
                  image: listArticle[index]["image"],
                  onTap: () {},
                );
              }),
        ));
  }
}
