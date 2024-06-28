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

enum CardFinalType {
  monster(
    '怪兽卡',
    Color.fromARGB(255, 255, 255, 255),
    Colors.white,
  ),
  magic(
    '魔法卡',
    Color.fromARGB(255, 7, 184, 131),
    Colors.indigoAccent,
  ),
  trap(
    '陷阱卡',
    Color.fromARGB(255, 230, 12, 114),
    Colors.purple,
  );

  const CardFinalType(this.value, this.color, this.attrColor);
  final String value;
  final Color color;
  final Color attrColor;
}
