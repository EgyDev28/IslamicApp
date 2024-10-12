import 'package:flutter/material.dart';

class HadethScreen extends StatelessWidget {
static const routeName ='/HadethScreen';

  @override
  Widget build(BuildContext context) {
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
        body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 30),
          width: 350,
          height: 652,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: AppTheme.white,
          ),
          child: ListView.builder(
            itemBuilder: (_, index) =>
                Text(Ayat[index], style: TextStyle(color: AppTheme.black,fontSize: 20),textAlign: TextAlign.center),
            itemCount: Ayat.length,
          ),
        ),
      ),
    );
  }
}
