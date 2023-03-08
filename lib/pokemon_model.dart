class PokemonModel {
  String name;
  String imageAddress;
  //TODO : pokemon IndexNum, Skills 추가하기
  PokemonModel(
    this.name,
    this.imageAddress,
  );
  //TODO : pokemon List 추가하기

  static List<PokemonModel> samples = [
    PokemonModel(
      '피카츄',
      'assets/images/pikachu.png',
    ),
    PokemonModel(
      '이상해씨',
      'assets/images/bulbasaur.png',
    ),
    PokemonModel(
      '파이리',
      'assets/images/charmander.png',
    ),
    PokemonModel(
      '꼬북이',
      'assets/images/squirtle.png',
    ),
    PokemonModel(
      '갸라도스',
      'assets/images/gyarados.png',
    ),
    PokemonModel(
      '망나뇽',
      'assets/images/dragonite.png',
    ),
    PokemonModel(
      '잠만보',
      'assets/images/snorlax.png',
    ),
    PokemonModel(
      '팬텀',
      'assets/images/haunter.png',
    ),
  ];
}
