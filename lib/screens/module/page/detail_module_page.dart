import 'package:buddy_blues/provider/module_provider.dart';
import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';

class DetailModulePage extends StatelessWidget {
  const DetailModulePage({super.key});

  @override
  Widget build(BuildContext context) {
    final int index = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      backgroundColor: ThemeColor().bluePrimary50,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Consumer<ModuleProvider>(
          builder: (BuildContext context, value, Widget? child) {
            if (value.moduleData.isNotEmpty) {
              return ListView(
                children: [
                  Image.network(value.moduleData[index]["image"]),
                  const SizedBox(height: 10),
                  Html(
                    data: value.moduleData[index]["content"],
                    style: {
                      "p": Style(textAlign: TextAlign.justify),
                    },
                  )
                ],
              );
            } else {
              return const Center(
                child: Text("Maaf, data tidak tersedia."),
              );
            }
          },
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 48,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: ThemeColor().bluePrimary500,
                  )),
            ),
            Expanded(
              child: Center(
                child: Consumer<ModuleProvider>(
                  builder: (BuildContext context, value, Widget? child) {
                    return Text(
                      value.moduleData[index]["title"],
                      style: ThemeText().robotoMedium,
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
