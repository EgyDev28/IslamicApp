import 'package:flutter/material.dart';
import 'package:islamicapp/AppTheme.dart';
import 'package:islamicapp/Setting/Setting.dart';
import 'package:islamicapp/tabs/Qurantab.dart';
import 'package:islamicapp/tabs/SettingTab.dart';
import 'package:islamicapp/tabs/hadethTap.dart';
import 'package:islamicapp/tabs/radioTap.dart';
import 'package:islamicapp/tabs/sebhaTab.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class quranScreen extends StatefulWidget {
  static const String routeName = '/quranScreen';

  @override
  State<quranScreen> createState() => _quranScreenState();
}

class _quranScreenState extends State<quranScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    quranTab(),
    hadethTab(),
    sebhaTab(),
    radioTab(),
    SettingTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/${Provider.of<SettingProvider>(context).backgroundimage}.png'))),
      child: Scaffold(
        appBar: AppBar(title: Text('${AppLocalizations.of(context)!.islami}')),
        body: tabs[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (Index) {
            currentIndex = Index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              label: '${AppLocalizations.of(context)!.quran}',
              icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
            ),
            BottomNavigationBarItem(
              label: '${AppLocalizations.of(context)!.hadeth}',
              icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
            ),
            BottomNavigationBarItem(
              label: '${AppLocalizations.of(context)!.sebha}',
              icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
            ),
            BottomNavigationBarItem(
              label: '${AppLocalizations.of(context)!.radio}',
              icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
            ),
            BottomNavigationBarItem(
              label: '${AppLocalizations.of(context)!.setting}',
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
