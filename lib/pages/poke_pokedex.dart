import 'package:flutter/material.dart';
// for pokeapi
import 'dart:convert';
import 'package:http/http.dart' as http;
// models
import 'package:pokedex/models/pokemon.dart';
// widgets
import 'package:pokedex/widgets/poke_card.dart';

/// A stateful widget that represents the Pokedex page.
///
/// The [PokePokedex] widget fetches and displays a list of Pokémon from the
/// PokeAPI. It handles pagination by loading more Pokémon as the user scrolls
/// to the bottom of the list.
///
/// The widget consists of an app bar with a title and a body that contains a
/// scrollable list of Pokémon cards. When the user reaches the end of the list,
/// more Pokémon are fetched and added to the list.
///
/// The [PokePokedex] widget has the following properties:
/// - `title`: The title of the app bar.
///
/// The state of the [PokePokedex] widget is managed by the [_PokePokedexState]
/// class, which includes the following properties:
/// - `_pokemons`: A list of Pokémon objects that are displayed in the list.
/// - `_isLoading`: A boolean flag indicating whether Pokémon data is currently
///   being fetched.
/// - `_offset`: The offset for the next batch of Pokémon to be fetched.
/// - `_limit`: The number of Pokémon to fetch in each batch.
///
/// The [_PokePokedexState] class includes the following methods:
/// - `initState()`: Initializes the state and starts fetching the initial batch
///   of Pokémon.
/// - `_fetchPokemons()`: Fetches a batch of Pokémon from the PokeAPI and updates
///   the state with the new data.
/// - `build()`: Builds the widget tree, including the app bar and the scrollable
///   list of Pokémon cards.

class PokePokedex extends StatefulWidget {
  const PokePokedex({super.key, required this.title});

  final String title;

  @override
  _PokePokedexState createState() => _PokePokedexState();
}

class _PokePokedexState extends State<PokePokedex> {
  final List<Pokemon> _pokemons = [];
  bool _isLoading = false;
  int _offset = 0;
  final int _limit = 20;

  @override
  void initState() {
    super.initState();
    _fetchPokemons();
  }

  Future<void> _fetchPokemons() async {
    if (_isLoading) return;
    setState(() {
      _isLoading = true;
    });

    final response = await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon?offset=$_offset&limit=$_limit'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List results = data['results'];
      for (var result in results) {
        final pokemonResponse = await http.get(Uri.parse(result['url']));
        if (pokemonResponse.statusCode == 200) {
          final pokemonData = jsonDecode(pokemonResponse.body);
          setState(() {
            _pokemons.add(Pokemon.fromJson(pokemonData));
          });
        }
      }
      setState(() {
        _offset += _limit;
        _isLoading = false;
      });
    } else {
      throw Exception('Failed to load Pokémon');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scrollInfo) {
          if (!_isLoading && scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
            _fetchPokemons();
          }
          return false;
        },
        child: ListView.builder(
          itemCount: _pokemons.length + 1,
          itemBuilder: (context, index) {
            if (index == _pokemons.length) {
              return _isLoading ? Center(child: CircularProgressIndicator()) : SizedBox.shrink();
            }
            return PokeCard(pokemon: _pokemons[index]);
          },
        ),
      ),
    );
  }
}

Future<Pokemon> fetchPokemon(int id) async {
  final response = await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/$id'));

  if (response.statusCode == 200) {
    return Pokemon.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load Pokemon');
  }
}
