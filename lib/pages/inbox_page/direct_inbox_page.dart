import 'package:flutter/material.dart';
import 'package:todyapp/pages/category/category_page.dart';
import 'package:todyapp/pages/main_page/main_page.dart';
import 'package:todyapp/pages/upcoming_page/upcoming_page.dart';

import '../project_page/project_page.dart';

class InBoxPage extends StatefulWidget {
  const InBoxPage({super.key});

  @override
  State<InBoxPage> createState() => _InBoxPageState();
}

class _InBoxPageState extends State<InBoxPage> {
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
          const MainPageOfProgram()),
        );
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 120,
        centerTitle: true,
        title: const Text("Inbox",
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
      body: Center(
        child: Column(
          children: [
            Container(
              width: 327,
              height: 148,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(color: Colors.black, blurRadius: 0.2)
                ],
              ),
              child: Column(
                children: [
                  Container(
                    width: 327,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Color(0xFF24A19C),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.outlined_flag_sharp, color:  Colors.white, size: 15,),
                            SizedBox(width: 5,),
                            Text("Priority task 1",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),

                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.more_horiz, color: Colors.white, size: 18,),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      Image.asset("assets/images/circle.png"),
                      const SizedBox(width: 12),
                      const Text(
                        "Masyla Website Project",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 18,),
                  const Divider(
                    color: Colors.grey,
                    indent: 20,
                    endIndent: 25,
                    thickness: 0.5,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     Row(
                       children: [
                         Icon(Icons.alarm, size: 15, color: Colors.red,),
                         SizedBox(width: 5),
                         Text(
                           "08.30 PM",
                           style: TextStyle(
                             color: Colors.red,
                             fontSize: 12,
                           ),
                         ),
                         SizedBox(width: 10,),
                         Icon(Icons.message, size: 15, color: Colors.grey,),
                         SizedBox(width: 3),
                         Text(
                           "1",
                           style: TextStyle(
                             color: Colors.grey,
                             fontSize: 12,
                           ),
                         ),
                         SizedBox(width: 10,),
                         Icon(Icons.move_to_inbox, size: 15, color: Colors.grey,),
                         SizedBox(width: 3),
                         Text(
                           "2",
                           style: TextStyle(
                             color: Colors.grey,
                             fontSize: 12,
                           ),
                         ),
                       ],
                     ),
                      Text(
                        "Mon, 19 Jul 2022",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: 327,
              height: 148,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(color: Colors.black, blurRadius: 0.2)
                ],
              ),
              child: Column(
                children: [
                  Container(
                    width: 327,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Row(
                         children: [
                           SizedBox(width: 10,),
                           Icon(Icons.outlined_flag_sharp, color:  Colors.white, size: 15,),
                           SizedBox(width: 5,),
                           Text("Priority task 2",
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 13,
                             ),
                           ),

                         ],
                       ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.more_horiz, color: Colors.white, size: 18,),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      Image.asset("assets/images/red_circle.png"),
                      const SizedBox(width: 12),
                      const Text(
                        "Masyla Website Project",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 18,),
                  const Divider(
                    color: Colors.grey,
                    indent: 20,
                    endIndent: 25,
                    thickness: 0.5,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.alarm, size: 15, color: Colors.red,),
                          SizedBox(width: 5),
                          Text(
                            "08.30 PM",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Icon(Icons.message, size: 15, color: Colors.grey,),
                          SizedBox(width: 3),
                          Text(
                            "1",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Icon(Icons.move_to_inbox, size: 15, color: Colors.grey,),
                          SizedBox(width: 3),
                          Text(
                            "2",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Mon, 19 Jul 2022",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: ClipOval(
        child: FloatingActionButton(
          onPressed: () {

          },
          backgroundColor: Color(0xFF24A19C),
          foregroundColor: Colors.white,
          elevation: 2.0,
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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
