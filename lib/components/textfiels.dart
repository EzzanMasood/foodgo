import 'package:flutter/material.dart';
import 'package:foodgo/config/colors.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final String? labelText; 
  final bool obscureText;
  final double? width;
  final double? height;
  final EdgeInsets? padding;

  const MyTextField({
    Key? key,
    required this.hintText,
    this.labelText, 
    this.obscureText = false,
    this.padding,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
        if (labelText != null)
          Text(
            labelText!,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),
        const SizedBox(height: 8), 
        SizedBox(
        
          width: width,
          height: height,
          child: TextField(

            decoration: InputDecoration(
              contentPadding: padding,
              border: OutlineInputBorder(
                
                borderRadius: BorderRadius.circular(8.0),
              ),
              hintText: hintText,
              hintStyle: const TextStyle(
                color: AppColors.grey,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(color: AppColors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(color: AppColors.grey),
              ),
            ),
            obscureText: obscureText,
          ),
        ),
      ],
    );
  }
}

