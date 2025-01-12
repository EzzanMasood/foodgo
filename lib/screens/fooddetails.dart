import 'package:flutter/material.dart';
import 'package:foodgo/components/buttons.dart';
import 'package:foodgo/config/colors.dart';
import 'package:foodgo/config/style.dart';
import 'package:foodgo/screens/cart.dart';

class FoodDetails extends StatefulWidget {
  const FoodDetails({super.key});

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  double _spiceLevel = 0.0;
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Food Details",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    right: screenWidth * 0.06, left: screenWidth * 0.06),
                child: Image.asset("assets/images/biryani.jpeg"),
              ),
              const SizedBox(height: 10),
              const Text(
                "Tava Restaurant",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 5),
              const Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star_border, color: Colors.yellow),
                  SizedBox(width: 5),
                  Text(
                    "4.0 (89 Reviews)",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              const Row(
                children: [
                  Text(
                    "\$7.99",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "\$9.50",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              const Text(
                "It's awesome food, it's great.",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const Text(
                "It is a long established fact that a reader will "
                "be distracted by the readable content of a page "
                "when looking at its layout.",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "• Chicken",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "• Tomato",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "• Lettuce",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Spicy",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Slider(
                          value: _spiceLevel,
                          onChanged: (value) {
                            setState(() {
                              _spiceLevel = value;
                            });
                          },
                          min: 0,
                          max: 1,
                          activeColor: Colors.red,
                          inactiveColor: Colors.grey.shade300,
                          thumbColor: Colors.red,
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Mild",
                            style: TextStyle(color: Colors.green, fontSize: 14),
                          ),
                          SizedBox(width: 40),
                          Text(
                            "Hot",
                            style: TextStyle(color: Colors.red, fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        "Quantity",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (_quantity > 1) _quantity--;
                              });
                            },
                            icon: const Icon(
                              Icons.remove_circle_outline,
                              color: Colors.green,
                            ),
                          ),
                          Text(
                            '$_quantity',
                            style: const TextStyle(fontSize: 16),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _quantity++;
                              });
                            },
                            icon: const Icon(
                              Icons.add_circle_outline,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: screenWidth * 0.1,
        height: screenWidth * 0.15,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: AppColors.grey.withOpacity(.2),
                blurRadius: 3,
                spreadRadius: 2,
                offset: const Offset(0, .5))
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Row(
            children: [
              CustomButton(
                  onTap: () {},
                  border: Border.all(color: AppColors.onBoardButton),
                  borderRadius: BorderRadius.circular(8.0),
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.05,
                      vertical: screenWidth * 0.03),
                  child: const ReuseableTextWidget(
                    text: "\$7.99",
                  )),
              const SizedBox(
                width: 20,
              ),
              CustomButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CartScreen()));
                  },
                  border: Border.all(color: AppColors.onBoardButton),
                  borderRadius: BorderRadius.circular(8.0),
                  color: AppColors.onBoardButton,
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.21,
                      vertical: screenWidth * 0.03),
                  child: const ReuseableTextWidget(
                    text: "Add to cart",
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
