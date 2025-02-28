import 'package:flutter/material.dart';
import 'package:pokedex/design/themes.dart';
// widgets
import 'package:pokedex/widgets/poke_button.dart';

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
        Text(
          'Welcome to the Pokedex!',
          style: PokeThemes.defaultTheme.textTheme.labelLarge,
        ),                                              
        const SizedBox(height: 20),
        PokeButton(
          text: 'Press me',
          onPressed: () {
            print('Button pressed');
          },
        ),
          ],
        ),
      ),
    );
  }
}
