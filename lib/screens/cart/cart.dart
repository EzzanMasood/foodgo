import 'package:flutter/material.dart';
import 'package:foodgo/components/buttons.dart';
import 'package:foodgo/config/colors.dart';
import 'package:foodgo/config/style.dart';
import 'package:foodgo/models/add_to_carts_model.dart';
import 'package:foodgo/screens/cart/cart_widgets.dart';

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
      appBar: AppBar(
        backgroundColor: AppColors.onBoardButton,
        title: const ReuseableTextWidget(
          text: "Cart",
          fontWeight: FontWeight.bold,
          textColor: AppColors.white,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: addToCartList.length,
              itemBuilder: (context, index) {
                return CartsWidget(addtocart: addToCartList[index]);
              },
            ),
          ),
          Spacer(flex: 1,),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
            },
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                ReuseableTextWidget(text: "Payment Method"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
