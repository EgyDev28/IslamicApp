import 'package:flutter/material.dart';
import 'package:islamicapp/AppTheme.dart';
import 'package:islamicapp/Setting/Language.dart';
import 'package:islamicapp/Setting/Setting.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingTab extends StatefulWidget {
  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  List<Language> Languages = [
    Language(name: 'English', code: 'en'),
    Language(name: 'العربية', code: 'ar'),
  ];

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dark Mode',
                style: TextStyle(color:Provider.of<SettingProvider>(context).isDark ? AppTheme.gold:AppTheme.black,fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Switch(
                  value: settingProvider.themeMode == ThemeMode.dark,
                  onChanged: (isDark)=> settingProvider.saveThemeAtInit(isDark)
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Langauge',
                  style: TextStyle(color:Provider.of<SettingProvider>(context).isDark ? AppTheme.gold:AppTheme.black,fontSize: 25, fontWeight: FontWeight.bold)),
              DropdownButton<Language>(
                value: Languages.firstWhere((language) =>
                language.code == settingProvider.languagecode),
                items: Languages.map((language) => DropdownMenuItem(
                      child: Text(language.name),
                      value: language,
                    )).toList(),
                onChanged: (selectedLanguage) {
                  if (selectedLanguage != null) {
                    settingProvider.saveLangAtInit(selectedLanguage.code);
                  }
                  },
                borderRadius: BorderRadius.circular(20),
                style: TextStyle(color:Provider.of<SettingProvider>(context).isDark ? AppTheme.gold:AppTheme.black),
                dropdownColor: Provider.of<SettingProvider>(context).isDark ? AppTheme.darkPrimary:AppTheme.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
