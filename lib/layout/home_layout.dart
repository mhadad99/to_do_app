import 'package:flutter/material.dart';
import 'package:to_do_app/modules/archived_task_screen.dart';
import 'package:to_do_app/modules/done_task_screen.dart';
import 'package:to_do_app/modules/new_task_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  List<Widget> screens = [
    NewTaskScreen(),
    DoneTaskScreen(),
    ArchivedTaskScreen(),
  ];
  List titles = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titles[currentIndex],
        ),
      ),
      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          // try {
          //   var name = await getName();
          //   print(name);
          // } catch (error) {
          //   print(error.toString());
          // }
          getName().then((value) {
            //throw ('ffd');
            print(value);
          }).catchError((error) {
            print(error.toString());
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Tasks',
            icon: Icon(Icons.menu),
          ),
          BottomNavigationBarItem(
            label: 'Done',
            icon: Icon(Icons.check_circle_outline),
          ),
          BottomNavigationBarItem(
            label: 'Archived',
            icon: Icon(Icons.archive_outlined),
          ),
        ],
      ),
    );
  }

  Future<String> getName() async {
    return "Ahmed Ali";
  }
}
