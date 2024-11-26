import 'package:first_assignment/view/arithmetic_view.dart';
import 'package:first_assignment/view/area_of_circle_view.dart';
import 'package:first_assignment/view/dashboard_view.dart';
import 'package:first_assignment/view/simple_interest_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Dashboard());
  }
}
