import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todyapp/pages/category/category_page.dart';
import 'package:todyapp/pages/upcoming_page/upcoming_page.dart';

import '../inbox_page/direct_inbox_page.dart';
import '../project_page/project_page.dart';

class MainPageOfProgram extends StatefulWidget {
  const MainPageOfProgram({Key? key}) : super(key: key);
  static const route =  "/mainPageOfProgram";

  @override
  State<MainPageOfProgram> createState() => _MainPageOfProgramState();
}

class _MainPageOfProgramState extends State<MainPageOfProgram> {
  int _selectedIndex = 0;
  // List<Task> tasks = [];

  // void _showAddTaskDialog() {
  //   String title = '';
  //   String description = '';
  //
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Text('Add Task'),
  //         contentPadding: const EdgeInsets.all(16.0),
  //         content: SizedBox(
  //           width: double.infinity,
  //           height: 350,
  //           child: Column(
  //             mainAxisSize: MainAxisSize.min,
  //             children: [
  //               TextField(
  //                 decoration: const InputDecoration(
  //                   labelText: 'Title',
  //                   focusedBorder: OutlineInputBorder(
  //                     borderSide: BorderSide(color: Colors.transparent),
  //                   ),
  //                 ),
  //                 onChanged: (value) {
  //                   title = value;
  //                 },
  //               ),
  //               const SizedBox(height: 10),
  //               TextField(
  //                 decoration: const InputDecoration(
  //                   labelText: 'Description',
  //                   focusedBorder: OutlineInputBorder(
  //                     borderSide: BorderSide(color: Colors.transparent),
  //                   ),
  //                 ),
  //                 onChanged: (value) {
  //                   description = value;
  //                 },
  //               ),
  //             ],
  //           ),
  //         ),
  //         actions: [
  //           TextButton(
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //             child: const Text('Cancel'),
  //           ),
  //           TextButton(
  //             onPressed: () {
  //               _saveTask(title, description);
  //               Navigator.of(context).pop();
  //             },
  //             child: const Text('Save'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  //
  // void _saveTask(String title, String description) {
  //   setState(() {
  //     tasks.add(Task(title: title, description: description));
  //   });
  // }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

  //   if (index == 1) {
  //     _showAddTaskDialog();
  //
  // }
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 120,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Today",
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
            ),
            ),
            Text("  Best platform for creating to-do lists",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 13),
            child: Icon(Icons.settings, size: 26, color: Colors.grey,),
          )
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
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xFF24A19C),
                        ),
                        child: const Center(
                          child: Icon(Icons.add, color: Colors.white,),
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        "Tap plus to create a new task",
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
                      Text(
                        "Add your task",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "Today Sunday 25 Nov 2023",
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
            const SizedBox(height: 20),
        // Expanded(
        //   child: ListView.builder(
        //     itemCount: tasks.length,
        //     itemBuilder: (context, index) {
        //       return TaskContainer(
        //         title: tasks[index].title,
        //         description: tasks[index].description,
        //         time: DateTime.now(),
        //       );
        //     },
        //   ),
        // ),
          ],
        ),
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

// class Task {
//   final String title;
//   final String description;
//
//   Task({required this.title, required this.description});
// }
//
// class TaskContainer extends StatelessWidget {
//   final String title;
//   final String description;
//   final DateTime time;
//
//   const TaskContainer({Key? key, required this.title, required this.description, required this.time})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 327,
//       height: 148,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.white,
//         boxShadow: const [
//           BoxShadow(color: Colors.black, blurRadius: 0.2),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             width: 327,
//             height: 40,
//             decoration: const BoxDecoration(
//               color: Color(0xFF24A19C),
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(8),
//                 topRight: Radius.circular(8),
//               ),
//             ),
//           ),
//           const SizedBox(height: 10),
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   description,
//                   style: const TextStyle(fontSize: 16),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   "Saved on: ${DateFormat('yyyy-MM-dd HH:mm').format(time)}",
//                   style: const TextStyle(
//                     color: Colors.grey,
//                     fontSize: 12,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
