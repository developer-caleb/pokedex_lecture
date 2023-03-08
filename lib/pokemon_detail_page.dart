import 'package:flutter/material.dart';
import 'package:pokedex_lecture/pokemon_model.dart';

class PokemonDetailPage extends StatefulWidget {
  const PokemonDetailPage({Key? key, required this.pokemon}) : super(key: key);
  final PokemonModel pokemon;

  @override
  State<PokemonDetailPage> createState() => _RecipeDetailPageState();
}

class _RecipeDetailPageState extends State<PokemonDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon Detail'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              width: double.infinity,
              height: 300,
              child: Image.asset(
                widget.pokemon.imageAddress,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Text(widget.pokemon.name),
        ],
      )),
    );
  }
}
