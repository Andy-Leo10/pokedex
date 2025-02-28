import 'package:flutter/material.dart';
import 'package:pokedex/design/themes.dart';
// pages
import 'package:pokedex/pages/poke_home_page.dart';

class PokeApp extends StatelessWidget {
  const PokeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex by Andy-Leo',
      theme: PokeThemes.defaultTheme,
      home: const PokeHomePage(title: 'Pokedex'),
    );
  }
}

