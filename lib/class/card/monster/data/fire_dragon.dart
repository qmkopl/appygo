import 'package:appygo/class/card/monster/ygo_monster.dart';
import 'package:appygo/enum/card.dart';
import 'package:appygo/enum/monster.dart';

class FireDragon extends YgoMonsterCard {
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

  FireDragon({
    this.key = 'mo002',
    this.name = '喷火的龙',
    this.atk = 1600,
    this.def = 600,
    this.attr = MonsterCardAttr.fire,
    this.kind = MonsterCardKind.dragon,
    this.rare = CardRare.r,
    this.level = 4,
    this.description = '一头会喷火的龙，破坏力极高',
    this.finalType = CardFinalType.monster,
    this.monsterType = MonsterCardType.commonMonster,
    this.propertyList,
  }) {
    propertyList ??= [MonsterCardProperty.normal];
  }
}
