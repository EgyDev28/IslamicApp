import 'package:flutter/material.dart';
import 'package:islamicapp/AppTheme.dart';

class sebhaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/images/head_sebha_logo.png'),
          RotatedBox(
              child: Image.asset(
                'assets/images/body_sebha_logo.png',
              ),
              quarterTurns: 10),
          Text('عدد التسبيحات'),
          Container(color: AppTheme.gold),
        ],
      ),
    );
  }
}
