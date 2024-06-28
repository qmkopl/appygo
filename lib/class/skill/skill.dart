import 'package:appygo/enum/turn.dart';

/// 效果总体类型
/// ```
/// [name] 效果名称
/// [key] key
/// [description] 效果描述
/// [triggerPoint] 发动阶段
/// [speed] 符文速度
/// [duration] 持续回合
/// ```
abstract class Skill {
  abstract String key;
  abstract String name;
  abstract String description;
  abstract Turn triggerPoint;
  abstract int speed;
  abstract int duration;
}
