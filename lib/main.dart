import 'package:flutter/material.dart';
import 'package:islamicapp/AppTheme.dart';
import 'package:islamicapp/QuarnScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: quranScreen.routeName,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.light,
        routes: {
          quranScreen.routeName: (_) => quranScreen(),
        });
  }
}
