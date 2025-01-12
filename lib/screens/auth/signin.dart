import 'package:flutter/material.dart';
import 'package:foodgo/components/textfiels.dart';
import 'package:foodgo/config/colors.dart';
import 'package:foodgo/components/buttons.dart';
import 'package:foodgo/config/style.dart';
import 'package:foodgo/screens/auth/forgetpass.dart';
import 'package:foodgo/screens/home/home_screen.dart';


class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        title: const Text(
          "Log in",
          style: TextStyle(
            color: AppColors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: AppColors.onBoardButton,
        centerTitle: true,
         leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.white,
            ),
         ),
      ),
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: MyTextField(
                hintText: "Type your email",
                labelText: "Email",
                obscureText: false,
                width: size.width * 0.9,
                height: size.height * 0.08,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: MyTextField(
                hintText: "Type your password",
                labelText: "Password",
                obscureText: true,
                width: size.width * 0.9,
                height: size.height * 0.08,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (bool? value) {},
                  checkColor: AppColors.white,
                  activeColor: AppColors.onBoardButton,
                ),
                const ReuseableTextWidget(
                  text: "Remember Me",
                  textColor: AppColors.black,
                ),
                const SizedBox(
                  width: 80,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ReEmail()));
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.grey,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: CustomButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.4,
                    vertical: screenWidth * 0.03),
                color: AppColors.onBoardButton,
                borderRadius: BorderRadius.circular(8.0),
                child: const ReuseableTextWidget(
                  text: "Log In",
                  fontWeight: FontWeight.bold,
                  textColor: AppColors.white,
                ),
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
                      color: Colors.grey,
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
                      color: Colors.grey,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: screenWidth * 0.04),
                    child: const Divider(
                      color: Colors.grey,
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
            const SizedBox(height: 10),
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
