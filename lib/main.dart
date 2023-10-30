import 'package:flutter/material.dart';

void main() {
  runApp(FortressApp());
}

class FortressApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Стара фортеця',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FortressHomePage(),
    );
  }
}

class FortressHomePage extends StatelessWidget {
  final String fortressImageUrl =
      'https://static9.depositphotos.com/1088099/1143/i/600/depositphotos_11432327-stock-photo-old-fortress.jpg'; // Замініть на реальне URL зображення

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Old Fortress'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment
                  .topCenter, // Ця лінія опускає зміст від верхнього краю
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  15.0,
                ), // Встановлюємо радіус для заокруглення кутів
                child: Image.network(
                  fortressImageUrl, // Використовуйте Image.network для завантаження зображення з Інтернету
                  width: 400.0,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Стара фортеця',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Історичне місце Кам’янця-Подільського та України вцілому',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Кам’янець-Подільська фортеця недарма називається замком - коли дивишся на цю неймовірну красу, мимоволі згадуєш про те, що це оборона споруда, яка багато років захищала Полісся від атак завойовників.',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
