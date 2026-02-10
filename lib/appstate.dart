import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  bool _isDarkMode = false;
  bool _isBangla = false;

  bool get isDarkMode => _isDarkMode;
  bool get isBangla => _isBangla;

  void setDarkMode(bool value) {
    _isDarkMode = value;
    notifyListeners();
  }

  void setLanguage(bool value) {
    _isBangla = value;
    notifyListeners();
  }
}
