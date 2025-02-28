import 'package:flutter/material.dart';

class PokePokedex extends StatelessWidget {
  const PokePokedex({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Welcome to 1'),
      ),
    );
  }
}