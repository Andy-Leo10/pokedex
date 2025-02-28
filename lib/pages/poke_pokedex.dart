import 'package:flutter/material.dart';

class PokePokedex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokedex'),
      ),
      body: Center(
        child: Text('Welcome to the Pokedex!'),
      ),
    );
  }
}