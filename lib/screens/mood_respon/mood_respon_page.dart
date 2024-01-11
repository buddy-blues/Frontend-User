import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:buddy_blues/widget/main_button.dart';
import 'package:flutter/material.dart';

class MoodResponPage extends StatelessWidget {
  const MoodResponPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String mood = ModalRoute.of(context)!.settings.arguments as String;

    String moodRespon = "";

    if (mood == "Very Sad") {
      moodRespon =
          "Take a deep breath, give yourself some grace, and remember that you are not alone. Reach out for support when needed, and don't forget to take small breaks for self-care. You are a loving and capable parent, and your efforts are making a positive impact on your baby's life.";
    } else if (mood == "Sad") {
      moodRespon =
          "You are doing an incredible job as a parent, even on the tough days. It's normal to feel overwhelmed, but remember that you are providing love, care, and comfort to your little one.";
    } else if (mood == "So So") {
      moodRespon =
          "Parenting is a journey filled with both joy and challenges. Today might not have been the easiest, but remember that you are doing an amazing job. Your love, patience, and presence matter more than you can imagine.";
    } else if (mood == "Happy") {
      moodRespon =
          "Your presence, care, and commitment are the foundation of these beautiful moments. Embrace the happiness, hold onto the memories, and let them serve as a reminder of the incredible impact you have as a parent.";
    } else if (mood == "So Happy") {
      moodRespon =
          "Congratulations on a wonderfully happy day in your journey as a parent! Today has been filled with laughter, shared smiles, and the warmth of your family. Take a moment to savor these joyful moments and celebrate the happiness you've created together.";
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 39, right: 39, top: 82),
        child: Column(
          children: [
            Text(
              "Thank you for telling us!",
              style: ThemeText().robotoBold24,
            ),
            const SizedBox(height: 40),
            Image.asset("assets/images/mood_logo.png"),
            const SizedBox(height: 40),
            Text(
              moodRespon,
              style: ThemeText().robotoMedium20,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: MainButtonWidget(
            title: "History",
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/history");
            }),
      ),
    );
  }
}
