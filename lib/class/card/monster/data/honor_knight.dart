import 'package:appygo/class/card/monster/ygo_monster.dart';
import 'package:appygo/enum/card.dart';
import 'package:appygo/enum/monster.dart';

class HonorKnight extends YgoMonsterCard {
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

  HonorKnight({
    this.key = 'mo001',
    this.name = '荣耀骑士',
    this.atk = 1000,
    this.def = 300,
    this.attr = MonsterCardAttr.earth,
    this.kind = MonsterCardKind.warrior,
    this.rare = CardRare.n,
    this.level = 3,
    this.description = '屡次立下战功的骑士',
    this.finalType = CardFinalType.monster,
    this.monsterType = MonsterCardType.commonMonster,
    this.propertyList,
  }) {
    propertyList ??= [MonsterCardProperty.normal];
  }
}
