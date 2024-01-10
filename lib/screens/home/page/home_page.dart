import 'package:buddy_blues/screens/home/widget/article_menu_widget.dart';
import 'package:buddy_blues/screens/home/widget/current_modul_widget.dart';
import 'package:buddy_blues/screens/home/widget/mood_track_widget.dart';
import 'package:buddy_blues/screens/home/widget/today_article_widget.dart';
import 'package:buddy_blues/screens/home/widget/todolist_widget.dart';
import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome, User!',
                  style: ThemeText().robotoBold,
                ),
                const SizedBox(height: 16),
                const TodayArticleWidget(),
                const SizedBox(height: 16),
                const MoodTrackWidget(),
                const SizedBox(height: 16),
                const ToDoListWidget(),
                const SizedBox(height: 16),
                const CurrentModuleWidget(),
                const SizedBox(height: 16),
                const ArticleMenuWidget()
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/chatbot');
        },
        backgroundColor: ThemeColor().bluePrimary50,
        shape: const CircleBorder(),
        child: SizedBox(
          height: 20,
          width: 23,
          child: Image.asset(
            'assets/icons/robot.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
