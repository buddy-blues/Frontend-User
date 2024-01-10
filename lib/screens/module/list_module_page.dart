import 'package:buddy_blues/widget/list_modul_article_widget.dart';
import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';

class ListModulePage extends StatelessWidget {
  const ListModulePage({super.key});

  @override
  Widget build(BuildContext context) {
    final String moduleTitle =
        ModalRoute.of(context)!.settings.arguments as String;

    List<Map<String, dynamic>> pregnancyModule = [
      {
        "image": "assets/images/1stTrimester.png",
        "title": "1st Trimester",
        "desc":
            "Learn about the first trimester that lasts until the end of the 13th week of pregnancy.",
      },
      {
        "image": "assets/images/2ndTrimester.png",
        "title": "2nd Trimester",
        "desc":
            "Learn about the second trimester that represents the middle part of pregnancy, from weeks 13 to 26.",
      },
      {
        "image": "assets/images/3rdTrimester.png",
        "title": "3rd Trimester",
        "desc":
            "Learn about the third trimester that becomes the last part of pregnancy.",
      }
    ];
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: ThemeColor().bluePrimary500,
        centerTitle: true,
        title: Text(
          moduleTitle,
          style: ThemeText().robotoMedium.copyWith(color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: pregnancyModule.length,
                itemBuilder: (context, index) {
                  return ListModuleArticleWidget(
                    title: pregnancyModule[index]["title"],
                    desc: pregnancyModule[index]["desc"],
                    image: pregnancyModule[index]["image"],
                    onTap: () {
                      Navigator.pushNamed(context, "/detailModule", arguments: pregnancyModule[index]["title"] );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
