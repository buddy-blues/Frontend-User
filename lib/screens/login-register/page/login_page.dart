import 'package:buddy_blues/screens/login-register/widget/pass_textfield_widget.dart';
import 'package:buddy_blues/widget/textfield_widget.dart';
import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:buddy_blues/widget/main_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor().ligthBlue,
      body: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Column(
          children: [
            Text(
              'Welcome Back!',
              style: ThemeText().robotoBold,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have any account yet?",
                  style: ThemeText()
                      .robotoSmall
                      .copyWith(color: ThemeColor().neutral900),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  child: Text(
                    "Sign Up",
                    style: ThemeText()
                        .robotoSmallBold
                        .copyWith(color: ThemeColor().bluePrimary500),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/register');
                  },
                )
              ],
            ),
            const SizedBox(height: 34),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ThemeColor().grey,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 49, left: 36, right: 34),
                  child: Column(
                    children: [
                      const TextfieldWidget(title: 'Email'),
                      const SizedBox(height: 26),
                      PasswordTextfieldWidget(
                        title: 'Password',
                        icon: Icons.remove_red_eye,
                        onPressed: () {
                          setState(() {
                            isHide = !isHide;
                          });
                        },
                        isHidden: isHide,
                      ),
                      const SizedBox(height: 36),
                      MainButtonWidget(
                          title: 'Login',
                          onPressed: () {
                            Navigator.pushNamed(context, '/dashboard');
                          })
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
