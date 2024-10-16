import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:vital_ease/core/constants/asset_images/asset_images.dart';
import 'package:vital_ease/core/themes/colors/app_colors.dart';
import 'package:vital_ease/core/themes/styles/app_styles.dart';
import 'package:vital_ease/features/Auth/logIn/login_Screen.dart';
import 'package:vital_ease/features/Auth/signup/signup_screen.dart';

class OnboardingScreen extends StatelessWidget {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex:3,
            child: IntroductionScreen(
              key: introKey,
              globalBackgroundColor: AppColors.scaffoldBackColor,
              pages: [
                PageViewModel(
                  title: "",
                  bodyWidget: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 60, 20, 10),
                        child: Text(
                          "Book clinic appointments with ease. Choose your specialist and schedule a visit in just a few taps",
                          style: AppStyles.onBoardingBody,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 15,),
                      Image.asset(AssetImages.onboarding1)
                    ],
                  ),
                ),
                PageViewModel(
                  title: "",
                  bodyWidget: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 60, 20, 10),
                        child: Text(
                          "Consult with doctors via video call from home. Get professional medical advice without travel.",
                          style: AppStyles.onBoardingBody,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 15,),

                      Image.asset(AssetImages.onboarding2)
                    ],
                  ),
                ),
                PageViewModel(
                  title: "",
                  bodyWidget: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 60, 20, 10),
                        child: Text(
                          "Order medications online for home delivery. Quick, easy, and convenient.",
                          style: AppStyles.onBoardingBody,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 15,),

                      Image.asset(AssetImages.onboarding3)
                    ],
                  ),
                ),
                PageViewModel(
                  title: "",
                  bodyWidget: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 60, 20, 10),
                        child: Text(
                          "Book a doctor to visit you at home. Receive personalized care at your convenience.",
                          style: AppStyles.onBoardingBody,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 15,),

                      Image.asset(AssetImages.onboarding4)
                    ],
                  ),
                ),
                PageViewModel(
                  title: "",
                  bodyWidget: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 60, 20, 10),
                        child: Text(
                          "Schedule lab tests and scans at top centers. Fast and hassle-free appointments.",
                          style: AppStyles.onBoardingBody,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 15,),

                      Image.asset(AssetImages.onboarding5)
                    ],
                  ),
                ),
              ],
              showSkipButton: false,
              showDoneButton: false,
              showBackButton: false,
              next: Text(
                "",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor),
              ),
              onDone: () {},
              onSkip: () {},
              dotsDecorator: DotsDecorator(
                  size: Size(15, 15),
                  activeSize: Size(20, 20),
                  activeColor: AppColors.primaryColor,
                  color: Colors.white,
                  spacing: EdgeInsets.symmetric(horizontal: 3),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
            ),
          ),
          Expanded(
            child: Column(

              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.65,
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                    ),
                      onPressed: () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginScreen()),(route) => false,);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text("Log In",style: AppStyles.buttonText,),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account ?",style: AppStyles.onboardingBottomText,),
                    SizedBox(width: 6,),
                    InkWell(
                      onTap: (){Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SignupScreen()),(route) => false,);},
                        child: Text("sign up",style: AppStyles.onboardingBottomText.copyWith(color: AppColors.iconColor),))],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
