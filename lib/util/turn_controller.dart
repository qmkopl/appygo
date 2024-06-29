import 'package:appygo/class/player/player.dart';
import 'package:appygo/enum/turn.dart';

class TurnController {
  List a = [];
  TurnController(List<PlayerInfo> playerList) {
    playerList
        .map((e) => a.addAll(Turn.values.map((turn) => turn).toList()))
        .toList();
  }

  outA() {
    print(a);
  }
}
