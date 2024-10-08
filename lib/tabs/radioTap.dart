import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamicapp/AppTheme.dart';

class radioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 150),
        child: Column(
          children: [
            Image.asset(
              'assets/images/radio_image.png',
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.only(top: 57, bottom: 57),
              child: Text(
                'إذاعه القرآن الكريم',
                style: GoogleFonts.elMessiri(
                    fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Icon(
                    Icons.skip_previous_sharp,
                    color: AppTheme.lightPrimary,
                    size: 46,
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                GestureDetector(
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: AppTheme.lightPrimary,
                    size: 60,
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                GestureDetector(
                  child: Icon(
                    size: 46,
                    Icons.skip_next_sharp,
                    color: AppTheme.lightPrimary,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
