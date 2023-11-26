import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todyapp/pages/category/category_page.dart';
import 'package:todyapp/pages/inbox_page/direct_inbox_page.dart';
import 'package:todyapp/pages/intro/intro_page.dart';
import 'package:todyapp/pages/intro/second_intro_page.dart';
import 'package:todyapp/pages/intro/splash_screen.dart';
import 'package:todyapp/pages/main_page/main_page.dart';
import 'package:todyapp/pages/upcoming_page/upcoming_page.dart';

import 'pages/project_page/project_page.dart';

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
        textTheme: GoogleFonts.outfitTextTheme()
      ),
      home: const SplashScreen(),
      routes: {
        "/introPage": (context) => const IntroPage(),
        "/secondIntroPage" : (context) => const SecondIntroPage(),
        "/mainPageOfProgram" : (context) =>  const MainPageOfProgram(),
        "/upcomingPage" : (context) => const UpcomingPage(),
        "/categoryPage" : (context) => const CategoryPage(),
        "/projectPage"   : (context) => const ProjectPage(),
      },
    );
  }
}
