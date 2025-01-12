import 'package:flutter/material.dart';
import 'package:foodgo/config/colors.dart';
import 'package:foodgo/config/style.dart';
import 'package:foodgo/components/textfiels.dart';
import 'package:foodgo/components/buttons.dart';
import 'package:foodgo/screens/auth/otp.dart';

class ReEmail extends StatefulWidget {
  const ReEmail({super.key});

  @override
  State<ReEmail> createState() => _ReEmailState();
}

class _ReEmailState extends State<ReEmail> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Forgot Password",
          style: TextStyle(
            color: AppColors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: AppColors.onBoardButton,
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
      backgroundColor: AppColors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: ReuseableTextWidget(
              text:
                  "Enter the email associated with your account and we will send an email with code to reset your password",
              textColor: AppColors.grey,
            ),
          ),
          const SizedBox(
            height: 15,
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
          const SizedBox(
            height: 20,
          ),
          Center(
            child:  CustomButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OtpScreen()));
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
    );
  }
}
