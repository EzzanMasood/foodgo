import 'package:flutter/material.dart';
import 'package:foodgo/config/colors.dart';
import 'package:foodgo/components/buttons.dart';
import 'package:foodgo/config/style.dart';
import 'package:foodgo/screens/auth/signin.dart';
import 'package:foodgo/screens/auth/signup.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/logo/Logo.png"),
            const SizedBox(
              height: 40,
            ),
            CustomButton(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LogIn()));
              },
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.4, vertical: screenWidth * 0.03),
              color: AppColors.onBoardButton,
              borderRadius: BorderRadius.circular(8.0),
              child: const ReuseableTextWidget(
                text: "Log In",
                fontWeight: FontWeight.bold,
                textColor: AppColors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignUp()));
              },
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.4, vertical: screenWidth * 0.03),
              border: Border.all(color: AppColors.onBoardButton),
              borderRadius: BorderRadius.circular(8.0),
              child: const ReuseableTextWidget(
                text: "Sign Up",
                fontWeight: FontWeight.bold,
                textColor: AppColors.onBoardButton,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.04),
                    child: const Divider(
                      color: AppColors.grey,
                      thickness: 1,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Or",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.grey,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: screenWidth * 0.04),
                    child: const Divider(
                      color: AppColors.grey,
                      thickness: 1,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomOutlinedImageButton(
              label: "Continue with Google",
              onPressed: () {},
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.04, vertical: screenWidth * 0.01),
              imagePath: "assets/signin_signup/google.png",
              textStyle: const TextStyle(
                fontSize: 20,
                color: AppColors.black,
              ),
              borderColor: AppColors.grey,
            ),
            CustomOutlinedImageButton(
              label: "Continue with Facebook",
              onPressed: () {},
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.04, vertical: screenWidth * 0.01),
              imagePath: "assets/signin_signup/facebook.png",
              textStyle: const TextStyle(
                fontSize: 20,
                color: AppColors.black,
              ),
              borderColor: AppColors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
