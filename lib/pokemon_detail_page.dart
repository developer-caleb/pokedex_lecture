import 'package:flutter/material.dart';
import 'package:pokedex_lecture/pokemon_model.dart';

class PokemonDetailPage extends StatefulWidget {
  const PokemonDetailPage({Key? key, required this.pokemon}) : super(key: key);
  final PokemonModel pokemon;

  @override
  State<PokemonDetailPage> createState() => _RecipeDetailPageState();
}

class _RecipeDetailPageState extends State<PokemonDetailPage> {
  double lv = 1;
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
              '보유기술(LV : ${lv.toInt()})',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Slider(
            value: lv,
            min: 1,
            max: 99,
            divisions: 98,
            label: 'lv : ${lv.toInt().toString()}',
            onChanged: (double value) {
              print(value);
              setState(() {
                lv = value;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: buildTable(),
          )
        ],
      )),
    );
  }

  Table buildTable() {
    List<SkillModel> skillSet = widget.pokemon.skills.where((element) => lv >= element.learningLevel).toList();
    return Table(
      border: TableBorder.all(),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        const TableRow(children: [
          Center(child: Text('LV')),
          Center(child: Text('기술')),
          Center(child: Text('위력')),
          Center(child: Text('PP')),
        ]),
        ...List.generate(skillSet.length, (index) {
          return TableRow(children: [
            Center(child: Text(skillSet[index].learningLevel.toString())),
            Center(child: Text(skillSet[index].name.toString())),
            Center(child: Text(skillSet[index].damage.toString())),
            Center(child: Text(skillSet[index].pp.toString())),
          ]);
        })
      ],
    );
  }
}
