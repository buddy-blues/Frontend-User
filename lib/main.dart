import 'package:buddy_blues/firebase_options.dart';
import 'package:buddy_blues/provider/module_provider.dart';
import 'package:buddy_blues/screens/article/page/article_page.dart';
import 'package:buddy_blues/screens/article/page/webview_page.dart';
import 'package:buddy_blues/screens/chatBot/page/chatBot_page.dart';
import 'package:buddy_blues/screens/conselling/page/after_payment_page.dart';
import 'package:buddy_blues/screens/conselling/page/confirm_payment_page.dart';
import 'package:buddy_blues/screens/conselling/page/detail_expert.dart';
import 'package:buddy_blues/screens/conselling/page/payment_method_page.dart';
import 'package:buddy_blues/screens/conselling/page/payment_page.dart';
import 'package:buddy_blues/screens/dashboard_page.dart';
import 'package:buddy_blues/screens/forum/page/comment_forum_page.dart';
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
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ModuleProvider()),
    ],
    child: const MyApp(),
  ));
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
        '/webpage': (context) => WebViewApp(
            link: ModalRoute.of(context)?.settings.arguments as String),
        '/listModule': (context) => const ListModulePage(),
        '/detailModule': (context) => const DetailModulePage(),
        '/moodRespon': (context) => const MoodResponPage(),
        '/history': (context) => const HistoryPage(),
        '/todolist': (context) => const TodolistPage(),
        '/addtodolist': (context) => const AddTodolistPage(),
        '/postforum': (context) => const PostForumPage(),
        '/commentforum': (context) => const CommentForumPage(),
        '/detailexpert': (context) => const DetailExpertPage(),
        '/paymentmethod': (context) => const PaymentMethodPage(),
        '/confirmpayment': (context) => const ConfirmPaymentPage(),
        '/afterpayment': (context) => const AfterPaymentPage(),
        '/payment': (context) => const PaymentPage()
      },
    );
  }
}
