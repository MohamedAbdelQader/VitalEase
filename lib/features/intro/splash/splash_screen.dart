import 'dart:async';
import 'package:flutter/material.dart';
import 'package:vital_ease/core/constants/asset_images/asset_images.dart';
import 'package:vital_ease/core/themes/colors/app_colors.dart';
import 'package:vital_ease/features/intro/onboarding/onboarding_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=> OnboardingScreen()),(route) => false,)

    );
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(70),
              child: Image.asset(AssetImages.logo,color: Colors.white,)),
        )
        
      ),
    );
  }
}
