import 'package:flutter/material.dart';
import 'package:handson2/pages/home_page.dart';
import 'package:handson2/pages/second_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hands On-02',
      home: HomePage(),
      routes: {
        '/home' : (context) => const HomePage(),
        'second' : (context) => const SecondPage(),
      }
    );
  }
}