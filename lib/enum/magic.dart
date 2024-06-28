enum MagicCardType {
  permanent('永续'),
  equip('装备'),
  field('场地'),
  speed('速攻'),
  normal('普通');

  const MagicCardType(this.value);
  final String value;
}
