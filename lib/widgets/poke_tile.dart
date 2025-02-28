import 'package:flutter/material.dart';
import 'package:pokedex/design/themes.dart';

class PokeTile extends StatelessWidget {
  const PokeTile({super.key, required this.title, required this.onPressed});

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: ElevatedButton(
        onPressed: onPressed,
        style: PokeThemes.widgetsTheme.elevatedButtonTheme.style,
        child: Text(
          title,
          style: PokeThemes.defaultTheme.textTheme.bodyLarge,
        ),
      ),
    );
  }
}
