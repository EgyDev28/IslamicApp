import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamicapp/AppTheme.dart';
import 'package:islamicapp/Hadeth/HadethContent.dart';
import 'package:islamicapp/Hadeth/HadethScreen.dart';
import 'package:islamicapp/Setting/Setting.dart';
import 'package:provider/provider.dart';

class hadethTab extends StatelessWidget {
  List<HadethContent> HadethContents = [];

  @override
  Widget build(BuildContext context) {
    LoadHadethContant();
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/qur2an_screen_logo.png'),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (_, index) => GestureDetector(
                      child: Text(
                        HadethContents[index].hadethTitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Provider.of<SettingProvider>(context).isDark ? AppTheme.gold:AppTheme.black
                            ,fontWeight: FontWeight.w400, fontSize: 25),
                      ),
                      onTap: () {
                        Navigator.of(_).pushNamed(
                          HadethScreen.routeName,
                          arguments: HadethContents[index],
                        );
                      }),
                  itemCount: HadethContents.length,
                ),
              ),
            ],
          ),
        ));
  }

  Future<void> LoadHadethContant() async {
    String hadethContant = await rootBundle.loadString('assets/Hadeth/ahadeth.txt');
    List<String> hadethSplit = hadethContant.split('#');
    HadethContents = hadethSplit.map((hadethString) {
      List<String> hadethLines = hadethString.trim().split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      List<String> Content = hadethLines;
      return HadethContent(hadethContent: Content, hadethTitle: title);
    }).toList();
  }
}
