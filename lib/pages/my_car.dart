import 'package:flutter/material.dart';

class MyCarPage extends StatelessWidget {
  const MyCarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Car'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Szczegóły samochodu',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Marka: BMW',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Model: E60',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Rok produkcji: 2008',
              style: TextStyle(fontSize: 18),
            ),
            // Dodaj więcej szczegółów według potrzeb
          ],
        ),
      ),
    );
  }
}