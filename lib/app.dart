import 'package:flutter/material.dart';
import 'package:handson2/pages/home_page.dart';
import 'package:handson2/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hands On-02',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: rotas,
    );
  }
}
