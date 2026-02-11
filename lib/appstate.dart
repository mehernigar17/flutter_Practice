import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  bool _isDark = false;
  bool _isBangla = false;

  bool get isDarkMode => _isDark;
  bool get isBangla => _isBangla;

  void setDarkMode(bool value) {
    _isDark = value;
    notifyListeners();
  }

  void setLanguage(bool value) {
    _isBangla = value;
    notifyListeners();
  }
}
