import 'package:chat_app/screen/homescreen/home_screen.dart';
import 'package:chat_app/screen/homescreen/profile_user.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      home: HomeScreen(),
    );
  }
}
