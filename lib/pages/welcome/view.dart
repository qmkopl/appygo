import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeController>(
      id: "order",
      init: WelcomeController(),
      builder: (_) {
        return Scaffold(
          body: Container(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Travel',
                  style: TextStyle(
                    fontSize: 36,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      minimumSize: WidgetStateProperty.all(
                        const Size(100, 40),
                      ),
                    ),
                    child: const Text('Go'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/duel_stand_by');
                    },
                    style: ButtonStyle(
                      minimumSize: WidgetStateProperty.all(
                        const Size(100, 40),
                      ),
                    ),
                    child: const Text('Option'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/guide');
                    },
                    style: ButtonStyle(
                      minimumSize: WidgetStateProperty.all(
                        const Size(100, 40),
                      ),
                    ),
                    child: const Text('Guide'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
