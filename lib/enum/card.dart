import 'package:flutter/material.dart';

enum CardRare {
  n('n', Color(0xFF000000)),
  p('p', Color.fromARGB(255, 95, 95, 95)),
  r('r', Color.fromARGB(255, 146, 146, 146)),
  utr('utr', Color.fromARGB(255, 255, 241, 49)),
  sr('sr', Color.fromARGB(255, 236, 79, 39)),
  hgr('sr', Color.fromARGB(255, 51, 241, 226));

  const CardRare(this.value, this.color);

  final Color color;
  final String value;
}

enum CardType {
  mainMonster('main_monster', Color.fromARGB(255, 255, 255, 255)),
  magicMonster('magic_monster', Color.fromARGB(255, 7, 184, 131)),
  trapMonster('trap_monster', Color.fromARGB(255, 230, 12, 114));

  const CardType(this.name, this.color);
  final String name;
  final Color color;
}
