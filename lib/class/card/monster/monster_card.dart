import 'package:appygo/class/card/card.dart';
import 'package:appygo/enum/monster.dart';

/// 怪兽卡类型
/// ```
/// [name] 卡名
/// [level] 卡片花费
/// [rare] 卡片罕贵
/// [description] 卡片描述
/// [type] 卡片类型 枚举
/// [atk] 卡片攻击力
/// [def] 卡片防御力
/// [attr] 卡片属性
/// [kind] 卡片种族
/// [monster_type] 怪兽类型
/// ```
abstract class MonsterCard extends Card {
  abstract int atk;
  abstract int def;
  abstract MonsterAttr attr;
  abstract MonsterKind kind;
  abstract MonsterType monsterType;
  abstract List<MonsterProperty>? propertyList;
}
