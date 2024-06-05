import 'package:appygo/class/card/monster/monster_card.dart';
import 'package:appygo/enum/card.dart';
import 'package:appygo/enum/monster.dart';

class MechaPhantomBeastOLion extends MonsterCard {
  @override
  String name;

  @override
  int def;

  @override
  int atk;

  @override
  MonsterAttr attr;

  @override
  MonsterKind kind;

  @override
  CardRare rare;

  @override
  int level;

  @override
  String description;

  @override
  CardType type;

  @override
  MonsterType monsterType;

  @override
  List<MonsterProperty>? propertyList;

  MechaPhantomBeastOLion({
    this.name = '幻兽机 猎户座飞狮',
    this.atk = 600,
    this.def = 1000,
    this.attr = MonsterAttr.wind,
    this.kind = MonsterKind.machine,
    this.rare = CardRare.hgr,
    this.level = 2,
    this.description =
        '1.（幻兽飞狮）：这张卡被送入墓地的场合才能发动，在自己场上把一只「幻兽衍生物」（风·机械族·3费·攻0·守0）特殊召唤。2（飞狮援救）：把墓地中的这张卡除外发动，从手卡把一张「幻兽」怪兽特殊召唤。这张卡的2效果一回合只能发动一次。',
    this.type = CardType.mainMonster,
    this.monsterType = MonsterType.effectMonster,
    this.propertyList,
  }) {
    propertyList ??= [MonsterProperty.effect, MonsterProperty.tuner];
  }
}
