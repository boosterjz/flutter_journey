import 'package:flutter/material.dart';
import 'bmi_calculator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Мой Flutter Путь',
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Мой Flutter путь'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Привет, Я - будущий Flutter разработчик!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Image.asset('assets/2024-10-07T19-18-41.jpg', width: 150),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Навигация на BmiCalculator
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BmiCalculator()),
                );
              },
              child: const Text('Начать путешествие'),
            ),
          ],
        ),
      ),
    );
  }
}