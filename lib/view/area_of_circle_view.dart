import 'package:flutter/material.dart';

class AreaOfCircle extends StatefulWidget {
  const AreaOfCircle({super.key});

  @override
  State<AreaOfCircle> createState() => _AreaOfCircleState();
}

class _AreaOfCircleState extends State<AreaOfCircle> {
  double radius = 0;
  double pI = 3.14;
  double area = 0;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Area of Circle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                radius = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter radius',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text('Area of circle : $result',
                style: const TextStyle(
                  fontSize: 20,
                )),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // State lai change gara
                  // buil method ma feri jau ani refresh gara
                  setState(() {
                    result = pI * radius * radius;
                  });
                },
                child: const Text('Area of Circle Calculation'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
