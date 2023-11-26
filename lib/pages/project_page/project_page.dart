import 'package:flutter/material.dart';

import '../inbox_page/direct_inbox_page.dart';
import '../main_page/main_page.dart';
import '../upcoming_page/upcoming_page.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  static const route = "/projectPage";

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>
            const MainPageOfProgram(),
            ));
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>
          const InBoxPage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>
          const UpcomingPage()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>
          const ProjectPage()),
        );
        break;
      case 4:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 120,
        centerTitle: true,
        title: const Text("Project",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(Icons.search, color: Colors.black, size: 28,),
          ),
        ],
      ),
      body:  const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Filter your task ',
                  style: TextStyle(
                    color: Color(0xFF1B1C1F),
                    fontSize: 18,
                  ),
                ),
                Icon(Icons.add, color: Colors.grey, size: 28,),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              children: [
                Icon(Icons.question_answer_outlined, color: Colors.grey, size: 28,),
                SizedBox(width: 5,),
                Text("Instructions For Use",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              children: [
               Icon(Icons.document_scanner_outlined, color: Colors.grey, size: 28,),
                SizedBox(width: 5,),
                Text("Try Boards",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              children: [
                Icon(Icons.settings, color: Colors.grey, size: 28,),
                SizedBox(width: 5,),
                Text("Manage filter",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF24A19C),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.move_to_inbox),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy_outlined),
            label: 'File',
          ),
        ],
      ),
    );
  }
}
