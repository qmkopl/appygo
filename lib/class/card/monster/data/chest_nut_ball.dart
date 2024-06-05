import 'package:appygo/class/card/monster/monster_card.dart';
import 'package:appygo/enum/card.dart';
import 'package:appygo/enum/monster.dart';

class ChestNutBall extends MonsterCard {
  @override
  String name;

  @override
  int def;

  @override
  int atk;

  @override
  MonsterAttr attr;

  @override
  MonsterKind kind;

  @override
  CardRare rare;

  @override
  int level;

  @override
  String description;

  @override
  CardType type;

  @override
  MonsterType monsterType;

  @override
  List<MonsterProperty>? propertyList;

  ChestNutBall({
    this.name = 'chest nut ball',
    this.atk = 200,
    this.def = 300,
    this.attr = MonsterAttr.dark,
    this.kind = MonsterKind.demon,
    this.rare = CardRare.n,
    this.level = 3,
    this.description = '1.（庇护）：送入墓地后发动，将所受的战斗伤害归零，同名效果一回合只能发动一次。',
    this.type = CardType.mainMonster,
    this.monsterType = MonsterType.effectMonster,
    this.propertyList,
  }) {
    propertyList ??= [MonsterProperty.effect];
  }
}
