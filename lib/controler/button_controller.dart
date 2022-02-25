import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ButtonController extends ChangeNotifier {
  static final instance = ButtonController();
  AlignmentGeometry position = Alignment.topLeft;

  changeButtonPosition(AlignmentGeometry position) {
    this.position = position;
    notifyListeners();
  }
}
