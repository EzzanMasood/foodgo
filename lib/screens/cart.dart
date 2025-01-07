import 'package:flutter/material.dart';
import 'package:foodgo/config/colors.dart';
import 'package:foodgo/config/style.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar:AppBar(
        backgroundColor: AppColors.onBoardButton,
        title:const ReuseableTextWidget(text: "Cart",
         fontWeight: FontWeight.bold,
         textColor: AppColors.white,
        ),
        centerTitle: true,
         leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.white,
            ),
         )
      ) ,
    );
  }
}