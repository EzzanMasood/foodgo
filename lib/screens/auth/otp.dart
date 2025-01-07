import 'package:flutter/material.dart';
import 'package:foodgo/config/colors.dart';
import 'package:foodgo/screens/auth/signin.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
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
            // showModalBottomSheet(context: context, builder: (context) {
            //   return 
            // },);
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
              child: ElevatedButton(
                onPressed: () {
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LogIn()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.3,
                    vertical: screenWidth * 0.03,
                  ),
                  backgroundColor: AppColors.onBoardButton,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text(
                  "Confirm",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//screen
//custom wudgets
//code manage