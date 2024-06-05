class PlayerInfo {
  static String name = '';
  static int health = -1;
  static int level = -1;

  PlayerInfo(String name, int health, int level) {
    name = name;
    health = health;
    level = level;
  }

  static damaged(int damage) {
    health -= damage;
    return health;
  }

  static heald(int heal) {
    health += heal;
    return health;
  }
}
