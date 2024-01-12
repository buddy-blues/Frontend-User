import 'package:buddy_blues/screens/login-register/widget/pass_textfield_widget.dart';
import 'package:buddy_blues/widget/textfield_widget.dart';
import 'package:flutter/material.dart';

import '../../../theme/theme_colorstyle.dart';
import '../../../theme/theme_textstyle.dart';
import '../../../widget/main_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
              'Create Account',
              style: ThemeText().robotoBold,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Have an account already?",
                  style: ThemeText()
                      .robotoSmall
                      .copyWith(color: ThemeColor().neutral900),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  child: Text(
                    "Login",
                    style: ThemeText()
                        .robotoSmallBold
                        .copyWith(color: ThemeColor().bluePrimary500),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
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
                      const TextfieldWidget(
                        title: 'Name', labelTextField: '', isEnabled: true,
                      ),
                      const SizedBox(height: 26),
                      const TextfieldWidget(
                        title: 'Email', labelTextField: '', isEnabled: true,
                      ),
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
                      MainButtonWidget(title: 'Register', onPressed: () {}, isEnabled: true,)
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
