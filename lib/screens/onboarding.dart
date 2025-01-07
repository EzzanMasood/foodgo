import 'package:flutter/material.dart';
import 'package:foodgo/components/buttons.dart';
import 'package:foodgo/config/colors.dart';
import 'package:foodgo/config/style.dart';
import 'package:foodgo/screens/access.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/onboarding/on.png"),
            const SizedBox(height: 30),
            const ReuseableTextWidget(
              text: "Explore now",
              fontSize: 20,
              textColor: AppColors.black,
              fontWeight: FontWeight.bold,
            ),
            const ReuseableTextWidget(
              text: "to experience the benefits",
              fontSize: 20,
              textColor: AppColors.black,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 5),
            const ReuseableTextWidget(
              text: "How are you doing today",
              fontSize: 15,
              textColor: AppColors.grey,
            ),
            const ReuseableTextWidget(
              text: "i hope its good",
              fontSize: 15,
              textColor: AppColors.grey,
            ),
            const ReuseableTextWidget(
              text: "Good luck",
              fontSize: 15,
              textColor: AppColors.grey,
            ),
            const SizedBox(height: 30),
            CustomButton(
                height: screenWidth * 0.1,
                width: screenWidth * 0.9,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>const FirstScreen()));
                },
                borderRadius: BorderRadius.circular(8.0),
                color: AppColors.onBoardButton,
                child:const Center(
                  child: ReuseableTextWidget(
                    text: "Get Started",
                    fontWeight: FontWeight.bold,
                    textColor: AppColors.white,
                    textAlign: TextAlign.center,
                    fontSize: 15,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
