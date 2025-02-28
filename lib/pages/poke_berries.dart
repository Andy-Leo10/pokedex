import 'package:flutter/material.dart';

class PokeBerries extends StatelessWidget {
  const PokeBerries({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Welcome to 4'),
      ),
    );
  }
}