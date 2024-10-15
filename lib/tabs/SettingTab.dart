import 'package:flutter/material.dart';
import 'package:islamicapp/Setting/Language.dart';
import 'package:islamicapp/Setting/Setting.dart';
import 'package:provider/provider.dart';

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
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Switch(
                  value: settingProvider.themeMode == ThemeMode.dark,
                  onChanged: (isDark)=> settingProvider.changeTheme(isDark?ThemeMode.dark:ThemeMode.light)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Langauge',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              DropdownButton<Language>(
                value: Languages.first,
                items: Languages.map((language) => DropdownMenuItem(
                      child: Text(language.name),
                      value: language,
                    )).toList(),
                onChanged: (selectedLanguage) {},
                borderRadius: BorderRadius.circular(20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}