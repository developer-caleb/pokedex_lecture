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
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'No.${widget.pokemon.indexNum.toString()}',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.pokemon.name,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              width: double.infinity,
              height: 300,
              child: Hero(
                tag: widget.pokemon.imageAddress,
                child: Image.asset(
                  widget.pokemon.imageAddress,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              '보유기술',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Table(
              border: TableBorder.all(),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: <TableRow>[
                const TableRow(children: [
                  Center(child: Text('LV')),
                  Center(child: Text('기술')),
                  Center(child: Text('위력')),
                  Center(child: Text('PP')),
                ]),
                ...List.generate(
                    widget.pokemon.skills.length,
                    (index) => TableRow(children: [
                          Center(child: Text(widget.pokemon.skills[index].learningLevel.toString())),
                          Center(child: Text(widget.pokemon.skills[index].name)),
                          Center(child: Text(widget.pokemon.skills[index].damage.toString())),
                          Center(child: Text(widget.pokemon.skills[index].pp.toString())),
                        ]))
              ],
            ),
          )
        ],
      )),
    );
  }
}
