import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

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
                      minimumSize: MaterialStateProperty.all(
                        const Size(100, 40),
                      ),
                    ),
                    child: const Text('Go'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        const Size(100, 40),
                      ),
                    ),
                    child: const Text('Option'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        const Size(100, 40),
                      ),
                    ),
                    child: const Text('Guide'),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
