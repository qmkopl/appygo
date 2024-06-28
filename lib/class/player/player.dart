import 'package:appygo/class/card/ygo_card.dart';
import 'package:appygo/class/field/field.dart';

class PlayerInfo {
  String name;
  int health;
  int level;
  List<YgoCard> hand = [];
  Field field = Field();

  PlayerInfo(this.name, this.health, this.level);

  getDamage(int damage) {
    health -= damage;
    return health;
  }

  getHeal(int heal) {
    health += heal;
    return health;
  }
}
