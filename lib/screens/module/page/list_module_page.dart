import 'package:buddy_blues/provider/module_provider.dart';
import 'package:buddy_blues/screens/module/widget/list_modul_widget.dart';
import 'package:buddy_blues/widget/basic_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListModulePage extends StatelessWidget {
  const ListModulePage({super.key});

  @override
  Widget build(BuildContext context) {
    final String moduleType =
        ModalRoute.of(context)!.settings.arguments as String;

    // List<Map<String, dynamic>> pregnancyModule = [
    //   {
    //     "image": "assets/images/1stTrimester.png",
    //     "title": "1st Trimester",
    //     "desc":
    //         "Learn about the first trimester that lasts until the end of the 13th week of pregnancy.",
    //   },
    //   {
    //     "image": "assets/images/2ndTrimester.png",
    //     "title": "2nd Trimester",
    //     "desc":
    //         "Learn about the second trimester that represents the middle part of pregnancy, from weeks 13 to 26.",
    //   },
    //   {
    //     "image": "assets/images/3rdTrimester.png",
    //     "title": "3rd Trimester",
    //     "desc":
    //         "Learn about the third trimester that becomes the last part of pregnancy.",
    //   }
    // ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: BasicAppbar(title: moduleType),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Consumer<ModuleProvider>(
                builder: (BuildContext context, value, Widget? child) {
                  if (value.loading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (value.moduleData.isNotEmpty) {
                    return ListView.builder(
                      itemCount: value.moduleData.length,
                      itemBuilder: (context, index) {
                        return ListModuleWidget(
                          title: value.moduleData[index]["title"],
                          desc: value.moduleData[index]["desc"],
                          image: value.moduleData[index]["image"],
                          onTap: () {
                            Navigator.pushNamed(context, "/detailModule",
                                arguments: index);
                          },
                        );
                      },
                    );
                  } else {
                    return const Center(
                      child: Text("Maaf, module belum tersedia"),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
