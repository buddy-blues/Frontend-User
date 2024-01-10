import 'package:buddy_blues/screens/conselling/conselling_page.dart';
import 'package:buddy_blues/screens/forum/forum_page.dart';
import 'package:buddy_blues/screens/home/page/home_page.dart';
import 'package:buddy_blues/screens/module/module_page.dart';
import 'package:buddy_blues/screens/profile/profile_page.dart';
import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int selectedIndex = 0;
  List pages = [
    const HomePage(),
    const ForumPage(),
    const ModulePage(),
    const ConsellingPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
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
            },
          ),
        ),
      ),
    );
  }
}
