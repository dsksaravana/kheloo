import 'package:flutter/material.dart';
import 'package:kheloo/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KHELOO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color.fromARGB(255, 255, 255, 72),
        useMaterial3: true,
      ),
      home: const Homepage(),
    );
  }
}
