import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum MonsterKind {
  magician('magician'),
  warrior('warrior'),
  beast('beast'),
  dragon('dragon'),
  machine('machine'),
  demon('Demon');

  const MonsterKind(this.value);
  final String value;
}

enum MonsterAttr {
  light('光', Color(0xFFFFFFFF), Color(0xFF000000)),
  dark('暗', Color(0xFF000000), Color(0xFFFFFFFF)),
  water('水', Color(0xFF0000FF), Color(0xFFFFFFFF)),
  fire('火', Color(0xFFFF0000), Color(0xFFFFFFFF)),
  wind('风', Color.fromARGB(255, 113, 233, 129), Color(0xFFFFFFFF)),
  earth('地', Color.fromARGB(255, 255, 131, 74), Color(0xFFFFFFFF));

  const MonsterAttr(this.value, this.color, this.textColor);
  final String value;
  final Color color;
  final Color textColor;
}

enum MonsterType {
  commonMonster('common_monster', Color(0xFFFFD700)),
  effectMonster('effect_monster', Color.fromARGB(255, 255, 186, 59)),
  fusionMonster('fusion_monster', Color(0xFFAE02DA)),
  xyzMonster('xyz_monster', Color.fromARGB(255, 31, 31, 31)),
  synchroMonster('synchro_monster', Color.fromARGB(255, 235, 235, 235)),
  linkMonster('link_monster', Color.fromARGB(255, 22, 94, 202));

  const MonsterType(this.value, this.color);
  final String value;
  final Color color;
}

enum MonsterProperty {
  normal('normal'),
  effect('effect'),
  tuner('tuner'),
  pendulum('Pendulum '),
  derivative('derivative');

  const MonsterProperty(this.value);
  final String value;
}
