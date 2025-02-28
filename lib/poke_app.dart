import 'package:flutter/material.dart';
import 'package:pokedex/design/themes.dart';
// pages
import 'package:pokedex/configs/routes.dart';
import 'package:pokedex/pages/poke_home_page.dart';
import 'package:pokedex/pages/poke_pokedex.dart';

class PokeApp extends StatelessWidget {
  const PokeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sinsodex',
      theme: PokeThemes.defaultTheme,
      routes: {
        PokeRoutes.home: (context) => const PokeHomePage(title: 'Home Page'),
        // PokeRoutes.pokedex: (context) => PokePokedex(),
        // PokeRoutes.tableTypes: (context) => const PokeTableTypes(title: 'Table of Types'),
        // PokeRoutes.movements: (context) => const PokeMovements(title: 'Movements'),
        // PokeRoutes.berries: (context) => const PokeBerries(title: 'Berries'),
      },
    );
  }
}

