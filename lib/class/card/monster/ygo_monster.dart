import 'package:appygo/class/card/ygo_card.dart';
import 'package:appygo/enum/monster.dart';

abstract class YgoMonsterCard extends YgoCard {
  abstract int atk;
  abstract int def;
  abstract int level;
  abstract MonsterCardAttr attr;
  abstract MonsterCardKind kind;
  abstract MonsterCardType monsterType;
  abstract List<MonsterCardProperty>? propertyList;
}
