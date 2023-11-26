import 'package:flutter/material.dart';

import '../category/category_page.dart';
import '../inbox_page/direct_inbox_page.dart';
import '../main_page/main_page.dart';
import '../project_page/project_page.dart';

class UpcomingPage extends StatefulWidget {
  const UpcomingPage({super.key});

  @override
  State<UpcomingPage> createState() => _UpcomingPageState();
}

class _UpcomingPageState extends State<UpcomingPage> {
  static const route = "/upcomingPage";
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
        title: const Text("Upcoming",
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
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: buildMonthDropdown(),
              ),
              buildYearDropdown(),
              const SizedBox(width: 100,),
              const Text("Today",
                style: TextStyle(
                  color:Color(0xFF24A19C),
                  fontSize: 17,
                ),
              )
            ],
          ),
         const SizedBox(height: 20,),
           Column(
            children: [
               const Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Text("M",
                     style: TextStyle(
                       color: Colors.grey,
                       fontSize: 15,
                     ),
                   ),

                     Text("T",
                     style: TextStyle(
                       color: Colors.grey,
                       fontSize: 15,
                     ),
                   ),

                   Text("W",
                     style: TextStyle(
                       color: Color(0xFF24A19C),
                       fontSize: 15,
                     ),
                   ),

                   Text("T",
                     style: TextStyle(
                       color: Colors.grey,
                       fontSize: 15,
                     ),
                   ),

                   Text("F",
                     style: TextStyle(
                       color: Colors.grey,
                       fontSize: 15,
                     ),
                   ),

                   Text("S",
                     style: TextStyle(
                       color: Colors.grey,
                       fontSize: 15,
                     ),
                   ),

                   Text("S",
                     style: TextStyle(
                       color: Colors.grey,
                       fontSize: 15,
                     ),
                   ),

                   Text("M",
                     style: TextStyle(
                       color: Colors.grey,
                       fontSize: 15,
                     ),
                   ),
                 ],
               ),
              const SizedBox(height: 5,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("5",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),

                  Text("   6",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),

                  Text("  7",
                    style: TextStyle(
                      color: Color(0xFF24A19C),
                      fontSize: 15,
                    ),
                  ),

                  Text("   8",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),

                  Text("9",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),

                  Text("10",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),

                  Text("11",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),

                  Text("12",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              const Divider(
                color: Colors.grey,
                thickness: 0.1,
                endIndent: 20,
                indent: 15,
              ),
              const SizedBox(height: 20,),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Today . Wednesday",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    ),
                  ),
                  SizedBox(width: 130,),
                  Text("Reschedule",
                  style: TextStyle(
                    color: Color(0xFF24A19C),
                    fontSize: 15,
                  ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              const Divider(
                color: Colors.grey,
                thickness: 0.1,
                endIndent: 20,
                indent: 15,
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const SizedBox(width: 20),
                  Image.asset("assets/images/circle.png"),
                  const SizedBox(width: 10),
                  const Text(
                    "Masyla Website Project",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(width: 130,),
                  const Icon(Icons.more_horiz, color: Colors.grey, size: 25,)
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        children: [
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
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const Divider(
                color: Colors.grey,
                thickness: 0.1,
                endIndent: 20,
                indent: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text("8 Apr 2022. Thursday",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const Divider(
                color: Colors.grey,
                thickness: 0.1,
                endIndent: 20,
                indent: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text("9 Apr 2022 . Friday",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const Divider(
                color: Colors.grey,
                thickness: 0.1,
                endIndent: 20,
                indent: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text("10 Apr 2022 . Sunday",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const Divider(
                color: Colors.grey,
                thickness: 0.1,
                endIndent: 20,
                indent: 15,
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const SizedBox(width: 20),
                  Image.asset("assets/images/circle.png"),
                  const SizedBox(width: 10),
                  const Text(
                    "Masyla Website Project",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(width: 130,),
                  const Icon(Icons.more_horiz, color: Colors.grey, size: 25,)
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        children: [
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
                    )
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.1,
                endIndent: 20,
                indent: 15,
              ),
              SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text("8 Apr 2022. Thursday",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
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

Widget buildMonthDropdown() {
  final List<String> months = [
    'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December'
  ];

  String selectedMonth = months[0];

  return DropdownButton<String>(
    value: selectedMonth,
    onChanged: (String? newValue) {
      if (newValue != null) {
        print('Selected Month: $newValue');
      }
    },
    items: months.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
  );
}

Widget buildYearDropdown() {
  final List<String> years = [
    '2022', '2023', '2024', '2025', '2026', '2027',
    '2028', '2029', '2030', '2031', '2032', '2033'
  ];

  String selectedYear = years[0];

  return DropdownButton<String>(
    value: selectedYear,
    onChanged: (String? newValue) {
      if (newValue != null) {
        // Do something with the selected year
        print('Selected Year: $newValue');
      }
    },
    items: years.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
  );
}

