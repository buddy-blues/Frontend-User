import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:buddy_blues/widget/main_button.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor().ligthBlue,
      body: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: GestureDetector(
                  child: Text(
                    "Login",
                    style: ThemeText().robotoSmall.copyWith(
                          color: ThemeColor().bluePrimary500,
                        ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/login");
                  },
                ),
              ),
            ),
            const SizedBox(height: 78),
            Image.asset('assets/images/start.png'),
            const SizedBox(height: 26),
            Text(
              'Start now!',
              style: ThemeText().robotoMedium,
            ),
            const SizedBox(height: 17),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "Let's empower Baby Blues sufferers with BuddyBlues",
                style: ThemeText()
                    .robotoRegular
                    .copyWith(color: ThemeColor().bluePrimary800),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 40, left: 20, right: 20),
        child: MainButtonWidget(
            title: 'Register',
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            }, isEnabled: true,),
      ),
    );
  }
}
