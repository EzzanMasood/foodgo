import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final double? height;
  final double? width;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final Border? border;
  final Gradient? gradient;
  final Color? color;
  final Widget child;

  const CustomButton(
      {super.key,
      required this.onTap,
      this.height,
      this.width,
      this.padding,
      this.borderRadius,
      this.border,
      this.gradient,
      this.color,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          height: height,
          width: width,
          padding: padding,
          decoration: BoxDecoration(
            border: border,
            borderRadius: borderRadius,
            gradient: gradient,
            color: color,
          ),
          child: child,
        ));
  }
}

class CustomOutlinedImageButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final String? imagePath;
  final double? imageHeight;
  final double? imageWidth;
  final TextStyle? textStyle;
  final double? width;
  final double? height;
  final Color? borderColor;
  final EdgeInsets? padding;

  const CustomOutlinedImageButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.imagePath,
    this.imageHeight,
    this.imageWidth,
    this.padding,
    this.textStyle,
    this.width,
    this.height,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        padding: padding,
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: borderColor ?? Theme.of(context).primaryColor,
                width: 0.5,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (imagePath != null)
                Image.asset(
                  imagePath!,
                  height: imageHeight ?? 24.0,
                  width: imageWidth ?? 24.0,
                ),
              if (imagePath != null) const SizedBox(width: 8.0),
              Text(
                label,
                style: textStyle ??
                    TextStyle(
                      fontSize: 16,
                      color: borderColor ?? Theme.of(context).primaryColor,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double size;
  final VoidCallback onPressed;

  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.color = Colors.black,
    this.size = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
        size: size,
      ),
      onPressed: onPressed,
    );
  }
}
