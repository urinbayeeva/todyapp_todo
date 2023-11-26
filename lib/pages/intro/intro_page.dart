import 'package:flutter/material.dart';
import 'second_intro_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  static const route = "/introPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Image.asset("assets/images/intro_page.png",
            width: 400,
              height: 400,
            ),
            const Text("Your convenience in\n   making a todo list",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
            ),
            const SizedBox(height: 8,),
            const Center(
              child: Text("Here's a mobile platform that helps you create task\n \t\t\t\t\t\t\t\t\tor to list so that it can help you in every job\n                               easier and faster.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
            ),
            const SizedBox(height: 40,),
            TextButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SecondIntroPage()));
            },
                child: Container(
                  width: 326,
                  height: 56,
                  decoration: BoxDecoration(
                    color: const Color(0xFF24A19C),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text("Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
