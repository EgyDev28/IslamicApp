import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingProvider with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String languagecode = 'en';

  void changeTheme (ThemeMode selectedMode){
    themeMode = selectedMode;
    notifyListeners();
  }
  void changeLanguage (String selectedLanguage){
    languagecode = selectedLanguage;
    notifyListeners();
  }

  bool get isDark => themeMode == ThemeMode.dark;
  String get backgroundimage => isDark ? 'dark_bg' : 'default_bg';


  }

