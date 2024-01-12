import 'dart:async';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';

class AfterPaymentPage extends StatefulWidget {
  const AfterPaymentPage({super.key});

  @override
  State<AfterPaymentPage> createState() => _AfterPaymentPageState();
}

class _AfterPaymentPageState extends State<AfterPaymentPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, '/history');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/apresiasi.png"),
              const SizedBox(height: 24),
              Text(
                "Thank you! Please wait for our confirmation",
                style: ThemeText().robotoBold30,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
