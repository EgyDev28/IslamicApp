import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamicapp/AppTheme.dart';
import 'package:islamicapp/Setting/Setting.dart';
import 'package:provider/provider.dart';

class sebhaTab extends StatefulWidget {
  @override
  State<sebhaTab> createState() => _sebhaTabState();
}

class _sebhaTabState extends State<sebhaTab> {
  static int count = 0;
  int index = 0;
  int azkrCount = 0;
  List<String> azkr = ['سبحان الله', 'الحمد لله', 'الله اكبر'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FractionalTranslation(
                translation: Offset(0.4, 0.25),
                child: Image.asset('assets/images/head_sebha_logo.png',
                    alignment: Alignment.bottomCenter)),
            RotatedBox(
                child: GestureDetector(
                  onTap: sebhaCount,
                  child: Image.asset(
                    'assets/images/body_sebha_logo.png',
                    height: 234,
                    width: 232,
                  ),
                ),
                quarterTurns: count),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text('عدد التسبيحات',
                style: GoogleFonts.elMessiri(fontSize: 25,fontWeight: FontWeight.w600,color: Provider.of<SettingProvider>(context)!.isDark ?AppTheme.gold:AppTheme.black),
                  ),
            ),
            Container(
              margin: EdgeInsets.only(top: 26),
              alignment: Alignment.center,
              width: 69,
              height: 81,
              decoration: BoxDecoration(
                color: AppTheme.gold.withOpacity(0.57),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                '$count',
                style: GoogleFonts.inter(fontSize: 30.26,fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 22),
              alignment: Alignment.center,
              width: 137,
              height: 51,
              decoration: BoxDecoration(
                color: AppTheme.gold,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                '${azkr[index]}',
                style: GoogleFonts.inter(fontSize: 30.26,fontWeight: FontWeight.w400,color: AppTheme.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void sebhaCount() {
    count++;
    azkrCount++;
    if (azkrCount <= 33) {
      index = 0;
      setState(() {});
    } else if (azkrCount > 33 && azkrCount <= 66) {
      index = 1;
      setState(() {});
    } else if (azkrCount > 66 && azkrCount <= 99) {
      index = 2;
      setState(() {});
    } else if (azkrCount == 100) {
      azkrCount = 0;
      setState(() {});
    }
    ;
  }
}
