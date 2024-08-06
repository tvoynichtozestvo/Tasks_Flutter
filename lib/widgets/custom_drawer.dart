import 'package:flutter/material.dart';
import 'package:to_do/resources/colors.dart';
import 'package:to_do/components/drawer_item.dart';
import 'package:to_do/resources/icons.dart';

class CustomDrawer extends StatelessWidget {

  List<Map<String, dynamic>> drawerItems = [
    {
      'name': "Profile",
      'icon': AppIcons.person,
      'navigate': "/profile",
      'completed': false,
    },

    {
      'name': "Tasks",
      'icon': AppIcons.add_circle,
      'navigate': "/tasks",
      'completed': false,
    },

    {
      'name': "Notes",
      'icon': AppIcons.add_box_rounded,
      'navigate': "/notes",
      'completed': false,
    },

    {
      'name': "Settings",
      'icon': AppIcons.settings,
      'navigate': "/settings",
      'completed': false,
    },
  ];

  CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Tasks",
                style: TextStyle(
                  fontSize: 35,
                  color: AppColors.secondary,
                ),
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: drawerItems.length,
              itemBuilder: (context, index) {
                return(DrawerItem(
                  itemName: drawerItems[index]['name'],
                  navigate: drawerItems[index]['navigate'],
                  itemIcon: drawerItems[index]['icon'],
                ));
              },
            ),
          )
        ],
      ),
    );
  }
}
