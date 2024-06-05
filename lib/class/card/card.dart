import 'package:appygo/enum/card.dart';

/// 卡总体类型
/// ```
/// [name] 卡名
/// [level] 卡片花费
/// [rare] 卡片罕贵
/// [description] 卡片描述
/// [type] 卡片类型 枚举
/// ```
abstract class Card {
  abstract String name;
  abstract int level;
  abstract CardRare rare;
  abstract String description;
  abstract CardType type;
}
