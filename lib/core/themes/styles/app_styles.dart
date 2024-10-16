
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vital_ease/core/themes/colors/app_colors.dart';

class AppStyles{
  static TextStyle onBoardingBody =GoogleFonts.dmSans(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.iconColor
  );
  static TextStyle buttonText =GoogleFonts.dmSans(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static TextStyle onboardingBottomText =GoogleFonts.dmSans(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.greyColor,
  );

}