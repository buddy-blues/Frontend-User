import 'package:buddy_blues/screens/article/article_page.dart';
import 'package:buddy_blues/screens/chatBot/page/chatBot_page.dart';
import 'package:buddy_blues/screens/dashboard_page.dart';
import 'package:buddy_blues/screens/forum/page/post_forum_page.dart';
import 'package:buddy_blues/screens/history/page/history_page.dart';
import 'package:buddy_blues/screens/home/page/home_page.dart';
import 'package:buddy_blues/screens/module/page/detail_module_page.dart';
import 'package:buddy_blues/screens/module/page/list_module_page.dart';
import 'package:buddy_blues/screens/login-register/page/login_page.dart';
import 'package:buddy_blues/screens/mood_respon/mood_respon_page.dart';
import 'package:buddy_blues/screens/onboarding/onboarding_page.dart';
import 'package:buddy_blues/screens/profile/profile_page.dart';
import 'package:buddy_blues/screens/login-register/page/register_page.dart';
import 'package:buddy_blues/screens/start/start_page.dart';
import 'package:buddy_blues/screens/todolist/add_todolist_page.dart';
import 'package:buddy_blues/screens/todolist/todolist_page.dart';
import 'package:buddy_blues/theme/theme_colorstyle.dart';
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
        colorScheme:
            ColorScheme.fromSeed(seedColor: ThemeColor().bluePrimary800),
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
        '/dashboard': (context) => const DashboardPage(),
        '/article': (context) => const ArticlePage(),
        '/listModule': (context) => const ListModulePage(),
        '/detailModule': (context) => const DetailModulePage(),
        '/moodRespon': (context) => const MoodResponPage(),
        '/history': (context) => const HistoryPage(),
        '/todolist': (context) => const TodolistPage(),
        '/addtodolist': (context) => const AddTodolistPage(),
        '/postforum' :(context) => const PostForumPage()
      },
    );
  }
}
