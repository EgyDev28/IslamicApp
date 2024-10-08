import 'package:flutter/material.dart';
import 'package:islamicapp/AppTheme.dart';
import 'package:islamicapp/tabs/Qurantab.dart';
import 'package:islamicapp/tabs/hadethTap.dart';
import 'package:islamicapp/tabs/radioTap.dart';
import 'package:islamicapp/tabs/sebhaTab.dart';

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
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/default_bg.png'))),
      child: Scaffold(
        appBar: AppBar(title: Text('اسلامي')),
        body: tabs[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (Index) {
            currentIndex = Index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              label: 'Quran',
              icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
            ),
            BottomNavigationBarItem(
              label: 'Hadteh',
              icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
            ),
            BottomNavigationBarItem(
              label: 'Sebha',
              icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
            ),
            BottomNavigationBarItem(
              label: 'Radio',
              icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
            ),
          ],
        ),
      ),
    );
  }
}
