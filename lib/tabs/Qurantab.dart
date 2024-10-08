import 'package:flutter/material.dart';

class quranTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body:Align(alignment: Alignment.center,
          child: Text('Quran',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold))),
    );
  }
}
