import 'package:flutter/material.dart';
import 'package:pokedex/design/themes.dart';

class PokeButton extends StatelessWidget {
  const PokeButton({super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: PokeThemes.defaultTheme.elevatedButtonTheme.style,
      child: Text(text),
    );
  }
}