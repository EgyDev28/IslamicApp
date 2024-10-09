

import 'package:flutter/material.dart';
import 'package:islamicapp/AppTheme.dart';
import 'package:islamicapp/tabs/Qurantab.dart';

class SuraScreen extends StatelessWidget {
  static const String routeName = '/SuraScreen';



  @override
  Widget build(BuildContext context) {
    SuraArgument Args = ModalRoute.of(context)!.settings.arguments as SuraArgument;
    return Container(
      padding: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/default_bg.png'),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            Args.SuraName,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
        body:Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left:30),
          width: 350,
          height: 652,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: AppTheme.white,
          ),
        ),
      ),
    );
  }
}
