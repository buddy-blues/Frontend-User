import 'package:buddy_blues/screens/page/chatBot_page.dart';
import 'package:buddy_blues/screens/page/dashboard_page.dart';
import 'package:buddy_blues/screens/page/home_page.dart';
import 'package:buddy_blues/screens/page/login_page.dart';
import 'package:buddy_blues/screens/page/onboarding_page.dart';
import 'package:buddy_blues/screens/page/profile_page.dart';
import 'package:buddy_blues/screens/page/register_page.dart';
import 'package:buddy_blues/screens/page/start_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OnboardingPage(),
      routes: {
        '/start': (context) => const StartPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/chatbot': (context) => const ChatbotPage(),
        '/dashboard': (context) => const DashboardPage()
      },
    );
  }
}
