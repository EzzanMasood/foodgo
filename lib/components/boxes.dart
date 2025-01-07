import 'package:flutter/material.dart';
import 'package:foodgo/config/colors.dart';

class BoxField extends StatelessWidget {
  final String hintText;
  final String? labelText;
  final bool obscureText;
  final double? width;
  final double? height;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final EdgeInsets? padding;
  final Color? borderColor;
  final Function(String)? onChanged;
  final TextEditingController? controller;

  const BoxField({
    Key? key,
    required this.hintText,
    this.labelText,
    this.obscureText = false,
    this.width,
    this.height,
    this.prefixIcon,
    this.suffixIcon,
    this.padding,
    this.onChanged,
    this.controller, this.borderColor,
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
            controller: controller,
            onChanged: onChanged,
            obscureText: obscureText,
            decoration: InputDecoration(
              fillColor:AppColors.white ,
              filled: true,
              contentPadding: padding,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
              suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
              hintText: hintText,
              hintStyle:const  TextStyle(
                color: AppColors.grey,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide:  BorderSide(color: borderColor ??AppColors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
               borderSide:  BorderSide(color: borderColor ??AppColors.grey),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
