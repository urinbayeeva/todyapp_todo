import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todyapp/pages/intro/intro_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {

  @override
  void initState() {
    Future.delayed( const Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const IntroPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFF24A19C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/animations/animation_logo.json"),
            const Text("Todyapp", style: TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),),
            const SizedBox(height: 8,),
            const Text("The best to do list application for you",
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
            )
          ],
        ),
      ),
    );
  }
}
