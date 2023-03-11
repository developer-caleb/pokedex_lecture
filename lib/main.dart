import 'package:flutter/material.dart';
import 'package:pokedex_lecture/pokemon_detail_page.dart';
import 'package:pokedex_lecture/pokemon_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Pokedex App',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PokeDex'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                print('onTap Item : ${PokemonModel.samples[index].name}');
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PokemonDetailPage(pokemon: PokemonModel.samples[index]);
                }));
              },
              child: _buildPokemonCard(PokemonModel.samples[index]));
        },
        itemCount: PokemonModel.samples.length,
      ),
    );
  }

  Widget _buildPokemonCard(PokemonModel pokemon) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Hero(tag: pokemon.imageAddress, child: Image.asset(pokemon.imageAddress)),
            SizedBox(
              height: 10,
            ),
            Text(
              pokemon.name,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
