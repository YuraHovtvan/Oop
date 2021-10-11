Future<void> main() async {
  Luffy luffy = Luffy();
  Zorro zorro = Zorro();

  List<Hero> heroes = [];

  heroes.add(luffy);
  heroes.add(zorro);

  for (var ability in heroes) {
    ability.fightForWin();
  }
}

abstract class Hero {
  void _startFight() {}

  void _fighting() {}

  void _endFight() {}

  void fightForWin() {
    _startFight();
    _fighting();
    _endFight();
  }
}

class Luffy extends Hero {
  @override
  void _startFight() {
    print('Start of Luffy fighting');
  }

  @override
  void _fighting() {
    print('First gear');
  }

  @override
  void _endFight() {
    print('Luffy is winner!');
  }
}

class Zorro extends Hero {
  @override
  void _startFight() {
    print('Start of Zorro fighting');
  }

  @override
  void _fighting() {
    print('Use double blades style');
  }

  @override
  void _endFight() {
    print('Zorro is winner!');
  }
}
