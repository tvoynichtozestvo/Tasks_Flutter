import 'package:flutter/material.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(16, 40, 16, 16), // Задайте отступы по вашему выбору
              decoration: const BoxDecoration(
                color: Color.fromRGBO(30, 30, 30, 1), // Фоновый цвет, совпадающий с фоном Drawer
                // Нет нижней границы
              ),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Tasks",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
              child: ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                ),
                title: const Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: ListTile(
                leading: const Icon(
                  Icons.add_circle_outline,
                  color: Colors.white,
                  size: 30,
                ),
                title: const Text(
                  "Tasks",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/tasks');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: ListTile(
                leading: const Icon(
                  Icons.add_box_rounded,
                  color: Colors.white,
                  size: 30,
                ),
                title: const Text(
                  "Notes",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/notes');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 30,
                ),
                title: const Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/settings');
                },
              ),
            ),

          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 80,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          "Tasks",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}