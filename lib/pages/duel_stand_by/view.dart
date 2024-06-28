import 'package:appygo/class/card/ygo_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'index.dart';

class DuelStandByPage extends GetWidget<DuelStandByController> {
  const DuelStandByPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DuelStandByController>(
      id: 'duel_stand_by',
      builder: (_) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              decoration: BoxDecoration(
                color: Colors.blue[200],
              ),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.blue),
                        left: BorderSide(color: Colors.blue),
                        right: BorderSide(color: Colors.blue),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                            '${_.state.playerOne.name}--${_.state.playerOne.health}'),
                        const Spacer(),
                        const Text('V S'),
                        const Spacer(),
                        Text(
                            '${_.state.playerTwo.name}--${_.state.playerTwo.health}'),
                      ],
                    ),
                  ),
                  Container(
                    height: 400,
                    decoration: BoxDecoration(color: Colors.blue[300]),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          Row(
                            children: _.state.playerTwo.field.backField
                                .map((e) => easyFieldRender(e))
                                .toList(),
                          ),
                          Row(
                            children: _.state.playerTwo.field.frontField
                                .map((e) => easyFieldRender(e))
                                .toList(),
                          ),
                          Row(
                            children: _.state.playerOne.field.frontField
                                .map((e) => easyFieldRender(e))
                                .toList(),
                          ),
                          Row(
                            children: _.state.playerOne.field.backField
                                .map((e) => easyFieldRender(e))
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 400,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          Row(
                            children: _.state.playerOne.hand
                                .map((e) => easyFieldRender(e))
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget easyFieldRender(YgoCard? e) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.blueGrey[100],
        border: Border.all(width: 1),
      ),
      child: Text(e?.name ?? '--'),
    );
  }
}
