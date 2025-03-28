import 'package:flutter/material.dart';
import 'package:pokedex/configs/routes.dart';
import 'package:pokedex/design/themes.dart';
// pages
import 'package:pokedex/configs/routes.dart';
// widgets
import 'package:pokedex/widgets/poke_button.dart';
import 'package:pokedex/widgets/poke_tile.dart';

class PokeHomePage extends StatelessWidget {
  const PokeHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              child: Text(
              'Welcome! What would you like to do?',
              style: PokeThemes.defaultTheme.textTheme.labelLarge,
              textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            // add an arrange of 4 tiles in 2x2 grid with margin
            Container(
              margin: const EdgeInsets.fromLTRB(15, 0, 15, 15),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  PokeTile(
                    title: 'Pokedex',
                    onPressed: () {
                      print('Pokedex pressed');
                      Navigator.pushNamed(context, PokeRoutes.pokedex);
                    },
                  ),
                  PokeTile(
                    title: 'Table of Types',
                    onPressed: () {
                      print('Table of Types pressed');
                      Navigator.pushNamed(context, PokeRoutes.tableTypes);
                    },
                  ),
                  PokeTile(
                    title: 'Movements',
                    onPressed: () {
                      print('Movements pressed');
                      Navigator.pushNamed(context, PokeRoutes.movements);
                    },
                  ),
                  PokeTile(
                    title: 'Berries',
                    onPressed: () {
                      print('Berries pressed');
                      Navigator.pushNamed(context, PokeRoutes.berries);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
