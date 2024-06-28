import 'package:appygo/class/card/monster/ygo_monster.dart';
import 'package:appygo/enum/card.dart';
import 'package:appygo/enum/monster.dart';

class ChestNutBall extends YgoMonsterCard {
  @override
  String name;

  @override
  int def;

  @override
  int atk;

  @override
  MonsterCardAttr attr;

  @override
  MonsterCardKind kind;

  @override
  CardRare rare;

  @override
  int level;

  @override
  String description;

  @override
  CardFinalType finalType;

  @override
  MonsterCardType monsterType;

  @override
  List<MonsterCardProperty>? propertyList;

  @override
  String key;

  ChestNutBall({
    this.key = '0',
    this.name = 'chest nut ball',
    this.atk = 200,
    this.def = 300,
    this.attr = MonsterCardAttr.dark,
    this.kind = MonsterCardKind.demon,
    this.rare = CardRare.n,
    this.level = 3,
    this.description = '1.（庇护）：送入墓地后发动，将所受的战斗伤害归零，同名效果一回合只能发动一次。',
    this.finalType = CardFinalType.monster,
    this.monsterType = MonsterCardType.effectMonster,
    this.propertyList,
  }) {
    propertyList ??= [MonsterCardProperty.effect];
  }
}
