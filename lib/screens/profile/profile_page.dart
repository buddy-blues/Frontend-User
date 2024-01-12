import 'package:buddy_blues/theme/theme_textstyle.dart';
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Nama Pengguna",
                  style: ThemeText().robotoBold30,
                ),
              ),
              const SizedBox(height: 33),
              const Center(
                child: CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
              ),
              const SizedBox(height: 33),
              const TextfieldWidget(
                title: "Name",
              ),
              const SizedBox(height: 24),
              const TextfieldWidget(
                title: "Email",
              ),
              const SizedBox(height: 24),
              MainButtonWidget(title: "Edit Profile", onPressed: () {}, isEnabled: true,),
              const SizedBox(height: 24),
              MainButtonWidget(
                  title: "See History",
                  onPressed: () {
                    Navigator.pushNamed(context, '/history');
                  }, isEnabled: true,)
            ],
          ),
        ),
      ),
    );
  }
}
