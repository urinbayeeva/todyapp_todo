import 'package:flutter/material.dart';
import 'package:todyapp/pages/project_page/project_page.dart';

import '../inbox_page/direct_inbox_page.dart';
import '../main_page/main_page.dart';
import '../upcoming_page/upcoming_page.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  static const route = "/categoryPage";

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
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
          const CategoryPage()),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>
          const ProjectPage()),
        );
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
        title: const Text("Filter & Labels",
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
      body:  Column(
        children: [
          const Padding(
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
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              children: [
                Icon(Icons.filter_alt_outlined, color: Colors.grey, size: 28,),
                SizedBox(width: 5,),
                Text("Assignment to me",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              children: [
                Image.asset("assets/images/fire.png"),
                const SizedBox(width: 5,),
                const Text("Priority 1",
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
                Image.asset("assets/images/cool.png"),
                SizedBox(width: 5,),
                Text("Priority 3",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          const Padding(
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
