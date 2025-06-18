import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          title: const Text('Мой Flutter Путь'),
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
                onPressed: () {},
                child: const Text('Начать путешествие'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}