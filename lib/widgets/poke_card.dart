import 'package:flutter/material.dart'
// models
import 'package:pokedex/models/pokemon.dart';

class PokeCard extends StatelessWidget {
  const PokeCard({super.key, required this.pokemon});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(pokemon.name),
          Image.network(pokemon.imageUrl),
          Text(pokemon.types.join(', ')),
        ],
      ),
    );
  }
}