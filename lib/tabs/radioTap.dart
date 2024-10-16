import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamicapp/AppTheme.dart';
import 'package:islamicapp/Setting/Setting.dart';
import 'package:provider/provider.dart';

class radioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 150,),
          Image.asset(
            'assets/images/radio_image.png',
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.only(top: 57, bottom: 57),
            child: Text(
              'إذاعه القرآن الكريم',
              style: GoogleFonts.elMessiri(
                  fontSize: 25, fontWeight: FontWeight.w600,color: Provider.of<SettingProvider>(context)!.isDark ?AppTheme.gold:AppTheme.black),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Icon(
                  Icons.skip_previous_sharp,
                  color: AppTheme.lightPrimary,
                  size: 40,
                ),
              ),

              GestureDetector(
                child: Icon(
                  Icons.play_arrow_rounded,
                  color: AppTheme.lightPrimary,
                  size: 60,
                ),
              ),

              GestureDetector(
                child: Icon(
                  size: 40,
                  Icons.skip_next_sharp,
                  color: AppTheme.lightPrimary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
