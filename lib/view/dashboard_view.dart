import 'package:first_assignment/view/area_of_circle_view.dart';
import 'package:first_assignment/view/arithmetic_view.dart';
import 'package:first_assignment/view/simple_interest_view.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ArithmeticView()),
                );
              },
              child: const Text('Arithmetic Calculation'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SimpleInterest()),
                );
              },
              child: const Text('Simple Interest'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AreaOfCircle()),
                );
              },
              child: const Text('Area of Circle'),
            ),
          ],
        ),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
      ),
      body: const Center(
        child: Text(
          'Welcome to Page One!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
