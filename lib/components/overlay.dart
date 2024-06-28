import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// 展示框
/// ```
/// [show] 展示
/// [hide] 关闭
/// ```
class $inspector {
  static OverlayEntry? _overlayEntry;

  static void show({
    String content = '',
    required Widget child,
  }) {
    _overlayEntry = OverlayEntry(builder: (context) {
      return Material(
        color: Colors.transparent,
        child: GestureDetector(
          behavior: HitTestBehavior.deferToChild,
          onTap: () {
            hide();
          },
          child: _buildContainer(
            child: child,
          ),
        ),
      );
    });
    Navigator.of(Get.context!).overlay?.insert(_overlayEntry!);
  }

  static Widget _buildContainer({
    required Widget child,
  }) {
    return Container(
      width: Get.width,
      height: Get.height,
      color: const Color.fromRGBO(0, 0, 0, 0.5),
      child: Center(
        child: GestureDetector(
          onTap: () {},
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: child,
          ),
        ),
      ),
    );
  }

  /// 关闭 模态框
  static void hide() {
    if (_overlayEntry != null) {
      _overlayEntry?.remove();
      _overlayEntry = null;
    }
  }
}
