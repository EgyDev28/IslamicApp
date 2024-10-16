import 'package:flutter/material.dart';
import 'package:islamicapp/AppTheme.dart';
import 'package:islamicapp/Hadeth/HadethScreen.dart';
import 'package:islamicapp/HomeScreen.dart';
import 'package:islamicapp/Setting/Setting.dart';
import 'package:islamicapp/Sura/SuraScreen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



Future<void> main() async {
  runApp(
      ChangeNotifierProvider(
          create:(_) => SettingProvider() ,
          child :MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context)  {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    settingProvider.getThemeAtInit();
    settingProvider.getLangAtInit();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: quranScreen.routeName,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode:settingProvider.themeMode,
        routes: {
          quranScreen.routeName: (_) => quranScreen(),
          SuraScreen.routeName:(_) => SuraScreen(),
          HadethScreen.routeName:(_)=>HadethScreen(),
        },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(settingProvider.languagecode),
    );
  }
}
