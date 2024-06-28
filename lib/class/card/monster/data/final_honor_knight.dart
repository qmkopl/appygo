import 'package:appygo/class/card/monster/ygo_monster.dart';
import 'package:appygo/enum/card.dart';
import 'package:appygo/enum/monster.dart';

class FinalHonorKnight extends YgoMonsterCard {
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

  FinalHonorKnight({
    this.key = 'mo003',
    this.name = '终局荣耀骑士',
    this.atk = 1000,
    this.def = 1600,
    this.attr = MonsterCardAttr.earth,
    this.kind = MonsterCardKind.warrior,
    this.rare = CardRare.n,
    this.level = 4,
    this.description = '①：在自己回合发动，直到自己的回合结束阶段，攻击力上升1000点',
    this.finalType = CardFinalType.monster,
    this.monsterType = MonsterCardType.effectMonster,
    this.propertyList,
  }) {
    propertyList ??= [MonsterCardProperty.effect];
  }
}
