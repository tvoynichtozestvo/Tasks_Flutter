import 'package:flutter/material.dart';
import 'package:to_do/Components/todo_item.dart';
import 'package:to_do/widgets/custom_drawer.dart';
import 'package:to_do/widgets/modal_add.dart';
import 'package:to_do/widgets/custom_app_bar.dart';
import '../widgets/custom_fab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> tasks = [];

  //function add new task
  void addTasks(String taskName) {
    setState(() {
      tasks.add({
        'name': taskName,
        'completed': false,
      });
    });
  }

  //function change completed
  void toggleTask(int index) {
    setState(() {
      tasks[index]['completed'] = !tasks[index]['completed'];
    });
  }

  //function show dialog window
  void _showAddTaskDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return ModalAdd(
          onAddTask: addTasks,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,

      //Drawer
      drawer: CustomDrawer(),

      //AppBar
      appBar: CustomAppBar(title: "Tasks"),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: SizedBox(
          child: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return TodoItem(
                taskName: tasks[index]['name'],
                taskComleted: tasks[index]['completed'],
                onChanged: (value) => toggleTask(index),
              );
            },
          ),
        ),
      ),

      //FAB
      floatingActionButton: CustomFAB(
        onPressed: _showAddTaskDialog,
      ),
    );
  }
}
