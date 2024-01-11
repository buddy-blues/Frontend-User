import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';

class DetailModulePage extends StatelessWidget {
  const DetailModulePage({super.key});

  @override
  Widget build(BuildContext context) {
    final String moduleTitle =
        ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      backgroundColor: ThemeColor().bluePrimary50,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Image.network(
                "https://1.bp.blogspot.com/-KxMQmT8a3Gg/U0_47NkwBlI/AAAAAAAABrE/N0V-AZPWV4A/s1600/Ibu+Hamil.jpg"),
            const SizedBox(height: 35),
            Text(
              "The first trimester lasts until the end of the 13th week of pregnancy. You may begin feeling signs of pregnancy like nausea and tender breasts. Fetal development starts when the egg is fertilized. By the end of the 13th week, all of its organs and body systems are developing. Find a pregnancy care provider as soon you know you’re pregnant.",
              style: ThemeText().robotoRegular14,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 35),
            Text(
              "What is the first trimester of pregnancy? Pregnancy has three trimesters or stages. Each trimester is about 13 weeks or three months long. A full-term pregnancy lasts 40 weeks or between nine and 10 months. Your healthcare provider will talk to you about fetal development in terms of weeks. Your first trimester of pregnancy lasts until the 13th week of pregnancy.",
              style: ThemeText().robotoRegular14,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 35),
            Text(
              "It may seem strange, but your pregnancy actually begins on the first day of your last menstrual period. This is called the gestational age of the pregnancy. A pregnancy care provider calculates your due date by adding 40 weeks to the first day of your last menstrual period. So this means, by the time you know you’re pregnant, you’re already about four weeks along. This can be very confusing!",
              style: ThemeText().robotoRegular14,
              textAlign: TextAlign.justify,
            )
          ],
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
                child: Text(
                  moduleTitle,
                  style: ThemeText().robotoMedium,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
