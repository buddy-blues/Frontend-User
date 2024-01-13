import 'package:buddy_blues/screens/module/widget/list_modul_widget.dart';
import 'package:buddy_blues/widget/basic_appbar.dart';
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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: BasicAppbar(title: moduleTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: pregnancyModule.length,
                itemBuilder: (context, index) {
                  return ListModuleWidget(
                    title: pregnancyModule[index]["title"],
                    desc: pregnancyModule[index]["desc"],
                    image: pregnancyModule[index]["image"],
                    onTap: () {
                      Navigator.pushNamed(context, "/detailModule",
                          arguments: pregnancyModule[index]["title"]);
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
