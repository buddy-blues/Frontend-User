import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/widget/main_button.dart';
import 'package:buddy_blues/widget/textfield_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 35, right: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text("Nama Pengguna"),
            ),
            const SizedBox(height: 33),
            const Center(
              child: CircleAvatar(
                radius: 65,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
            ),
            const SizedBox(height: 33),
            const TextfieldWidget(title: "Name"),
            const SizedBox(height: 24),
            const TextfieldWidget(title: "Email"),
            const SizedBox(height: 24),
            MainButtonWidget(title: "Edit Profile", onPressed: () {}),
            const SizedBox(height: 24),
            MainButtonWidget(title: "See History", onPressed: () {})
          ],
        ),
      ),
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
                Navigator.pushNamed(context, '/home');
              }
            },
          ),
        ),
      ),
    );
  }
}
