import 'package:deyarakapp/theme/theme.dart';
import 'package:flutter/material.dart';

class ThemeProvide with ChangeNotifier {
  ThemeData _themedata = lightmode;
  ThemeData get themedata => _themedata;

  set themeData(ThemeData themeData) {
    _themedata = themeData;
    notifyListeners();
  }

  // ignore: non_constant_identifier_names
  void Toggletheme() {
    if (_themedata == lightmode) {
      themeData = darkmode;
      _themedata = darkmode;
    } else {
      themeData = lightmode;
      _themedata = lightmode;
    }
  }
}
