import 'package:flutter/material.dart';
import 'package:to_do/pages/home_page.dart';
import 'package:to_do/pages/notes_page.dart';
import 'package:to_do/pages/profile_page.dart';
import 'package:to_do/pages/settings_page.dart';
import 'package:to_do/theme/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: lightMod,
      darkTheme: darkMod,

      routes: {
        '/tasks' :(context) => HomePage(),
        '/notes' :(context) => NotesPage(),
        '/profile' :(context) => ProfilePage(),
        '/settings' :(context) => SettingsPage(),
      },
    );


  }
}