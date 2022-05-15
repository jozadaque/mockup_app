import 'package:flutter/material.dart';

class MyController extends ChangeNotifier {
  static final instance = MyController();
  AlignmentGeometry position = Alignment.topLeft;
  PageController controller = PageController();

  changeButtonPosition(AlignmentGeometry position) {
    this.position = position;
    if (position == Alignment.topLeft) {
      _changePage(0);
    }
    if (position == Alignment.topCenter) {
      _changePage(1);
    }
    if (position == Alignment.topRight) {
      _changePage(2);
    }

    notifyListeners();
  }

  _changePage(int page) {
    if (controller.hasClients) {
      controller.animateToPage(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}
