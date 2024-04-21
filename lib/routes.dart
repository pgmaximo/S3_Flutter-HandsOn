import 'package:flutter/material.dart';
import 'package:handson2/pages/home_page.dart';
import 'package:handson2/pages/second_page.dart';

Map<String, Widget Function(BuildContext context)> rotas = {
  '/home': (context) => const HomePage(),
  '/second': (context) => const SecondPage(),
};
