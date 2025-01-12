import 'package:flutter/material.dart';
import 'package:foodgo/config/colors.dart';
import 'package:foodgo/screens/auth/signin.dart';
import 'package:foodgo/components/buttons.dart';
import 'package:foodgo/config/style.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Verify OTP",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),

        backgroundColor: AppColors.darkgreen,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
       
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Enter your OTP which has been sent to your email and completely verify your account",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
    
            const Center(
              child: Pinput(
                length: 6,
                showCursor: true,
                defaultPinTheme: PinTheme(
                  width: 40,
                  height: 50,
                  textStyle:  TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  decoration:  BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 2),
                    ),
                  ),
                ),
                pinAnimationType: PinAnimationType.scale,
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                "A code has been sent to your phone",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                "Resend in 00:57",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 30),
                Center(
            child:  CustomButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LogIn()));
                },
            
                color: AppColors.onBoardButton,
                padding: EdgeInsets.symmetric(horizontal: screenWidth*0.36,vertical: screenWidth*0.02),
                width: size.width * 0.9,
              height: size.height * 0.05,
                borderRadius: BorderRadius.circular(8.0),
                child: const ReuseableTextWidget(
                  text: "Confirm",
                  fontWeight: FontWeight.bold,
                  textColor: AppColors.white,
                  
                ),
              ),
            
          )
          ],
        ),
      ),
    );
  }
}
