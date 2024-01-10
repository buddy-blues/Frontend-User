import 'package:buddy_blues/screens/widget/home/article_menu_widget.dart';
import 'package:buddy_blues/screens/widget/home/current_modul_widget.dart';
import 'package:buddy_blues/screens/widget/home/mood_track_widget.dart';
import 'package:buddy_blues/screens/widget/home/today_article_widget.dart';
import 'package:buddy_blues/screens/widget/home/todolist_widget.dart';
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
            
          },
          backgroundColor: ThemeColor().bluePrimary50,
          shape: const CircleBorder(),
          child: SizedBox(
              height: 20,
              width: 23,
              child: Image.asset(
                'assets/icons/robot.png',
                fit: BoxFit.cover,
              ))),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.forum_rounded),
                label: 'Forum',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Module',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: 'Conselling',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profile',
              ),
            ],
            currentIndex: selectedIndex,
            selectedItemColor: ThemeColor().bluePrimary500,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
              if (selectedIndex == 0) {
              } else if (selectedIndex == 4) {
                Navigator.pushNamed(context, '/profile');
              }
            },
          ),
        ),
      ),
    );
  }
}
