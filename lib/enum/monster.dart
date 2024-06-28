import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum MonsterCardKind {
  magician('魔术师'),
  warrior('战士'),
  beast('兽'),
  dragon('龙'),
  machine('机械'),
  demon('恶魔');

  const MonsterCardKind(this.value);
  final String value;
}

enum MonsterCardAttr {
  light('光', Color.fromARGB(255, 199, 211, 29)),
  dark('暗', Color(0xFF000000)),
  water('水', Color(0xFF0000FF)),
  fire('火', Color(0xFFFF0000)),
  wind('风', Color.fromARGB(255, 113, 233, 129)),
  earth('地', Color.fromARGB(255, 150, 80, 24));

  const MonsterCardAttr(this.value, this.color);
  final String value;
  final Color color;
}

enum MonsterCardType {
  commonMonster('通常', Color(0xFFFFD700)),
  effectMonster('效果', Color.fromARGB(255, 255, 186, 59)),
  fusionMonster('融合', Color(0xFFAE02DA)),
  xyzMonster('超量', Color.fromARGB(255, 31, 31, 31)),
  synchroMonster('同调', Color.fromARGB(255, 235, 235, 235)),
  linkMonster('链接', Color.fromARGB(255, 22, 94, 202));

  const MonsterCardType(this.value, this.color);
  final String value;
  final Color color;
}

enum MonsterCardProperty {
  normal('普通'),
  effect('效果'),
  tuner('调整'),
  pendulum('灵摆'),
  derivative('衍生物');

  const MonsterCardProperty(this.value);
  final String value;
}
