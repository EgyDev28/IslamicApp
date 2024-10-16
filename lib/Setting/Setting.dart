import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingProvider with ChangeNotifier {

  ThemeMode themeMode = ThemeMode.light;
  String languagecode = 'ar';

  void changeTheme(ThemeMode selectedMode) {
    themeMode = selectedMode;
    notifyListeners();
  }

  void changeLanguage(String selectedLanguage) {
    languagecode = selectedLanguage;
    notifyListeners();
  }

  bool get isDark => themeMode == ThemeMode.dark;

  String get backgroundimage => isDark ? 'dark_bg' : 'default_bg';

  getThemeAtInit() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool? isDarkTheme =
    sharedPreferences.getBool('isdark');
    if (isDarkTheme != null && isDarkTheme == true) {
      themeMode = ThemeMode.dark;
    } else {
      themeMode = ThemeMode.light;
    }
    notifyListeners();
  }

  saveThemeAtInit(bool mode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isdark', mode);
    if (mode == false) {
      themeMode = ThemeMode.light;
    } else {
      themeMode = ThemeMode.dark;
    }
    notifyListeners();
    print('save done');
    print(themeMode);
  }

  saveLangAtInit(String code) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('lang', code);
    languagecode = code;
    notifyListeners();
    print('save done');
    print(themeMode);
  }

  getLangAtInit() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedlang = await prefs.getString('lang');
    if (savedlang != null) {
      languagecode = savedlang;
      notifyListeners();
    }
  }
}

