import 'package:appygo/class/card/magic/ygo_magic.dart';
import 'package:appygo/enum/card.dart';
import 'package:appygo/enum/magic.dart';

class Fusion extends YgoMagicCard {
  @override
  String description;

  @override
  CardFinalType finalType;

  @override
  String key;

  @override
  MagicCardType magicCardType;

  @override
  String name;

  @override
  CardRare rare;

  Fusion({
    this.name = '融合',
    this.rare = CardRare.p,
    this.key = 'ma01',
    this.finalType = CardFinalType.magic,
    this.description = '融合',
    this.magicCardType = MagicCardType.normal,
  });
}
