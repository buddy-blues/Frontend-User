import 'package:buddy_blues/screens/module/widget/list_modul_widget.dart';
import 'package:buddy_blues/widget/buddyblues_appbar.dart';
import 'package:buddy_blues/widget/search_bar_widget.dart';
import 'package:flutter/material.dart';

class ModulePage extends StatelessWidget {
  const ModulePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listModule = [
      {
        "image": "assets/images/marriage.png",
        "title": "Marriage",
        "desc":
            "Life after marriage and having children is sometimes not as beautiful as drama. Learn about it in this module."
      },
      {
        "image": "assets/images/pregnancy.png",
        "title": "Pregnancy",
        "desc":
            "Learn about pregnancy and what is different from before pregnancy with tips to overcome it."
      },
      {
        "image": "assets/images/parenting.png",
        "title": "Parenting",
        "desc":
            "You might feel overwhelmed having a child and have to be a good figure for them. Learn more about it here."
      },
    ];
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: BuddyBluesAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        child: Column(
          children: [
            const SearchBarWidget(),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: listModule.length,
                itemBuilder: (context, index) {
                  return ListModuleWidget(
                    title: listModule[index]["title"],
                    desc: listModule[index]["desc"],
                    image: listModule[index]["image"],
                    onTap: () {
                      Navigator.pushNamed(context, "/listModule",
                          arguments: listModule[index]["title"]);
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
