import 'package:appygo/enum/card.dart';

/// 卡总体类型
/// ```
/// [name] 卡名
/// [key] key
/// [rare] 卡片罕贵
/// [description] 卡片描述
/// [finalType] 卡片主类型  怪兽、魔法、陷阱
/// ```
abstract class YgoCard {
  abstract String key;
  abstract String name;
  abstract CardFinalType finalType;
  abstract CardRare rare;
  abstract String description;
}
