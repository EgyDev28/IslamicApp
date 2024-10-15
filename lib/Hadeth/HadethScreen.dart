import 'package:flutter/material.dart';
import 'package:islamicapp/AppTheme.dart';
import 'package:islamicapp/Hadeth/HadethContent.dart';
import 'package:islamicapp/Setting/Setting.dart';
import 'package:provider/provider.dart';

class HadethScreen extends StatelessWidget {
static const String routeName ='/HadethScreen';

  @override
  Widget build(BuildContext context) {
    HadethContent Args = ModalRoute.of(context)!.settings.arguments as HadethContent;
    return Container(
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Provider.of<SettingProvider>(context).isDark ? AppTheme.darkPrimary:AppTheme.lightPrimary,
        image: DecorationImage(
          image: AssetImage('assets/images/${Provider.of<SettingProvider>(context).backgroundimage}.png'),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            Args.hadethTitle,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 30,top: 40),
          width: 350,
          height: 652,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Provider.of<SettingProvider>(context).isDark ? AppTheme.darkPrimary:AppTheme.white,
          ),
          child: ListView.builder(
            itemBuilder: (_, index) =>
                Text(Args.hadethContent[index],style: TextStyle(color: Provider.of<SettingProvider>(context).isDark ? AppTheme.gold:AppTheme.black,fontSize: 20),textAlign: TextAlign.center),
            itemCount: Args.hadethContent.length,
          ),
        ),
      ),
    );
  }
}
