import 'package:flutter/material.dart';
import 'package:foodgo/config/colors.dart';
import 'package:foodgo/config/style.dart';
import 'package:foodgo/models/add_to_carts_model.dart';

class CartsWidget extends StatefulWidget {
  final AddToCartModel addtocart;

  const CartsWidget({super.key, required this.addtocart});

  @override
  State<CartsWidget> createState() => _CartsWidgetState();
}

class _CartsWidgetState extends State<CartsWidget> {
  int _quantity = 1;

  @override
  void initState() {
    super.initState();
    _quantity = int.tryParse(widget.addtocart.quantity.replaceFirst('x', '')) ?? 1;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: screenWidth*0.3,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 5.0,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              widget.addtocart.imagePath,
              width: screenWidth * 0.2,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReuseableTextWidget(
                        text: widget.addtocart.title,
                        textColor: AppColors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    
                    ],
                  ),
                  Row(
                   children: [
                       const SizedBox(height: 4),
                      ReuseableTextWidget(
                        text: widget.addtocart.subTitles,
                        textColor: AppColors.black,
                      ),
                      const SizedBox(width: 10,),
                       ReuseableTextWidget(
                        text: widget.addtocart.quantity,
                        textColor: AppColors.black,
                        fontWeight: FontWeight.bold,
                      ), 
                   ],
                  ),
     
                  Row(
                    children: [
                      const SizedBox(width: 130,),
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
            ),
          ],
        ),
      ),
    );
  }
}
