import 'package:flutter/material.dart';
import 'package:todyapp/pages/main_page/main_page.dart';

class SecondIntroPage extends StatefulWidget {
  const SecondIntroPage({super.key});

  @override
  State<SecondIntroPage> createState() => _SecondIntroPageState();
}

class _SecondIntroPageState extends State<SecondIntroPage> {
  static const route = "/secondIntroPage";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Image.asset("assets/images/final.png",
              width: 400,
              height: 400,
            ),
            SizedBox(height: 50,),
            const Text("Find the practicality in\n  making your todo list",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            const SizedBox(height:8),
            const Center(
              child: Text("         Easy-to-understand user interface that makes you\n       more comfortable when you want to create a task or\n           to do list, Todyapp can also improve productivity",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
            ),
            SizedBox(height: 50,),
            TextButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  MainPageOfProgram()));
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
