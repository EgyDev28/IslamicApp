import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamicapp/AppTheme.dart';
import 'package:islamicapp/Setting/Setting.dart';
import 'package:islamicapp/tabs/Qurantab.dart';
import 'package:provider/provider.dart';

class SuraScreen extends StatefulWidget {
  static const String routeName = '/SuraScreen';

  @override
  State<SuraScreen> createState() => _SuraScreenState();
}

class _SuraScreenState extends State<SuraScreen> {
  List <String> Ayat = [];

  late SuraArgument Args;

  @override
  Widget build(BuildContext context) {
    Args = ModalRoute.of(context)!.settings.arguments as SuraArgument;
    if (Ayat.isEmpty) {
      print('yes');
      LoadSuraContant();
    }else{print('No');}

    return Container(
      padding: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/${Provider.of<SettingProvider>(context).backgroundimage}.png'),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            Args.SuraName,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 30),
          width: 350,
          height: 652,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Provider.of<SettingProvider>(context).isDark ? AppTheme.darkPrimary:AppTheme.white,
          ),
          child: ListView.builder(
            itemBuilder: (_, index) =>
                Text(Ayat[index], style: TextStyle(color: Provider.of<SettingProvider>(context).isDark ? AppTheme.gold:AppTheme.black,fontSize: 20),textAlign: TextAlign.center),
            itemCount: Ayat.length,
          ),
        ),
      ),
    );
  }

  Future<void> LoadSuraContant() async {
    String AyatContant =
        await rootBundle.loadString('assets/Sura/${Args.index+1}.txt');
    Ayat = AyatContant.split('/n');
    setState(() {});
  }
}
