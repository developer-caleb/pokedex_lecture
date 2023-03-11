class PokemonModel {
  String name;
  String imageAddress;
  int indexNum;
  List<SkillModel> skills;

  PokemonModel({
    required this.name,
    required this.imageAddress,
    required this.indexNum,
    required this.skills,
  })  : assert(indexNum > 0),
        assert(skills.length <= 4),
        assert(skills.isNotEmpty);

  static List<PokemonModel> samples = [
    PokemonModel(name: '피카츄', imageAddress: 'assets/images/pikachu.png', indexNum: 25, skills: [
      SkillModel(name: '10만볼트', damage: 95, pp: 15),
      SkillModel(name: '전광석화', damage: 40, pp: 30),
    ]),
    PokemonModel(name: '이상해씨', imageAddress: 'assets/images/bulbasaur.png', indexNum: 1, skills: [
      SkillModel(name: '몸통박치기', damage: 35, pp: 35),
      SkillModel(name: '덩굴채찍', damage: 35, pp: 10),
    ]),
    PokemonModel(name: '파이리', imageAddress: 'assets/images/charmander.png', indexNum: 4, skills: [
      SkillModel(name: '할퀴기', damage: 40, pp: 35),
      SkillModel(name: '불꽃세례', damage: 40, pp: 25),
    ]),
    PokemonModel(name: '꼬부기', imageAddress: 'assets/images/squirtle.png', indexNum: 7, skills: [
      SkillModel(name: '물대포', damage: 40, pp: 35),
      SkillModel(name: '몸통박치기', damage: 35, pp: 35),
    ]),
    PokemonModel(name: '갸라도스', imageAddress: 'assets/images/gyarados.png', indexNum: 130, skills: [
      SkillModel(name: '파괴광선', damage: 150, pp: 5),
      SkillModel(name: '하이드로펌프', damage: 120, pp: 5),
    ]),
    PokemonModel(name: '망나뇽', imageAddress: 'assets/images/dragonite.png', indexNum: 149, skills: [
      SkillModel(name: '파괴광선', damage: 150, pp: 5),
      SkillModel(name: '용의분노', damage: 40, pp: 10),
    ]),
    PokemonModel(name: '잠만보', imageAddress: 'assets/images/snorlax.png', indexNum: 143, skills: [
      SkillModel(name: '박치기', damage: 70, pp: 15),
      SkillModel(name: '잠자기', damage: 0, pp: 10),
      SkillModel(name: '이판사판태클', damage: 120, pp: 15),
    ]),
    PokemonModel(name: '팬텀', imageAddress: 'assets/images/haunter.png', indexNum: 94, skills: [
      SkillModel(name: '최면술', damage: 0, pp: 20),
      SkillModel(name: '꿈먹기', damage: 100, pp: 15),
    ]),
  ];
}

class SkillModel {
  String name; // 스킬 이름
  double damage; //데미지
  int pp; //스킬 사용 가능 횟수
  SkillModel({required this.name, required this.damage, required this.pp});
}
