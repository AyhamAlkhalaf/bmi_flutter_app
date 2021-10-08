import 'package:bmi_flutter_app/modules/archivedTasks/archived-tasks-sceen.dart';
import 'package:bmi_flutter_app/modules/doneTasks/done-tasks-screen.dart';
import 'package:bmi_flutter_app/modules/newTasks/newTasksScreen.dart';
import 'package:flutter/material.dart';



class  HomeLayout extends StatefulWidget {

  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0 ;

  List<Widget> screens = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];
  List<String> titles =[

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
        centerTitle: true,
      ),
      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed:(){},
        child: Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(
            Icons.menu,
          ),
            label: "Tasks"
          ),
          BottomNavigationBarItem(icon: Icon(
            Icons.check_circle_outline,
          ),
              label: "Done"
          ),
          BottomNavigationBarItem(icon: Icon(
            Icons.archive_outlined,
          ),
              label: "Archived"
          ),
        ],
      ),
    );
  }
}
