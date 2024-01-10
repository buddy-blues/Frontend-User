import 'package:buddy_blues/screens/onboarding/widget/onboarding_bottom.dart';
import 'package:buddy_blues/screens/onboarding/widget/onboarding_content.dart';
import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int position = 0;
  final PageController _onboardingController = PageController();
  final List<Map<String, String>> onboardingContent = [
    {
      "title": "Welcome to Buddy Blues",
      "desc": "",
      "imagePath": "assets/images/buddyblues_logo.png"
    },
    {
      "title": "Seeking Help?",
      "desc": "Consult with our expert psycholog without leaving home",
      "imagePath": "assets/images/onboarding1.png"
    },
    {
      "title": "Our ChatBotAI willing to help",
      "desc": "",
      "imagePath": "assets/images/onboarding2.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor().ligthBlue,
      body: Padding(
        padding: const EdgeInsets.only(top: 90, right: 45, left: 45),
        child: PageView.builder(
          controller: _onboardingController,
          itemCount: onboardingContent.length,
          itemBuilder: (context, index) {
            return OnboardingContentWidget(
                title: onboardingContent[index]["title"] ?? "",
                desc: onboardingContent[index]["desc"] ?? "",
                imagePath: onboardingContent[index]["imagePath"] ?? "");
          },
          onPageChanged: (value) {
            setState(() {
              position = value;
            });
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
        child: OnboardingBottomWidget(
          dotsCount: onboardingContent.length,
          dotsPosition: position,
          onPressed: () {
            if (position + 1 == 3) {
              Navigator.pushNamed(context, '/start');
            } else {
              _onboardingController.animateToPage(position + 1,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease);
            }
          },
        ),
      ),
    );
  }
}
