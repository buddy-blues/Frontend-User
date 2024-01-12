import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:buddy_blues/widget/main_button.dart';
import 'package:flutter/material.dart';

class PostForumPage extends StatelessWidget {
  const PostForumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: ThemeColor().bluePrimary500,
        centerTitle: true,
        title: Text(
          "Community",
          style: ThemeText().robotoMedium.copyWith(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 28),
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Sri Ratna",
                style: ThemeText().robotoMedium,
              ),
              leading: const CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/originals/60/e0/3b/60e03b25d0829ec560b3f472e84cd23a.jpg"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextField(
                maxLines: 6,
                decoration: InputDecoration(
                  hintText: "What's Happened?",
                  hintStyle: TextStyle(color: ThemeColor().grey2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            MainButtonWidget(
              title: "Post",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
