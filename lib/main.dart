import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'matcha',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'CustomFont',
      ),
      home: const ImagesScreen(),
    );
  }
}

class ImagesScreen extends StatelessWidget {
  const ImagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Статичные ресурсы-3кт',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Матча:',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 20),
          
          SizedBox(
            height: 200,
            child: Image.asset(
              'assets/images/image1.png',
              fit: BoxFit.contain, 
            ),
          ),
          const SizedBox(height: 20),

          SizedBox(
            height: 200,
            child: Image.asset(
              'assets/images/image2.png',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 20),
          // Третье изображение с высотой 200
          SizedBox(
            height: 200,
            child: Image.asset(
              'assets/images/image3.png',
               fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 20),
          // Текст с размером 30px
          const Text(
            'i love matcha!!',
            style: TextStyle(
              fontSize: 30, // Увеличиваем размер шрифта до 30px
              fontWeight: FontWeight.bold, // Можно добавить жирность
            ),
          ),
        ],
      ),
    );
  }
}