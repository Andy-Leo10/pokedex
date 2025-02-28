import 'package:flutter/material.dart';

class PokeMovements extends StatelessWidget {
  const PokeMovements({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Welcome to 3'),
      ),
    );
  }
}