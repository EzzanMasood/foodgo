import 'package:flutter/material.dart';
import 'package:foodgo/components/buttons.dart';
import 'package:foodgo/config/colors.dart';
import 'package:foodgo/config/style.dart';
import 'package:foodgo/models/booking_resturants_models.dart';
import 'package:foodgo/screens/search/search.dart';

class FoodListWidget extends StatelessWidget {
  final String title;
  final String subTitles;
  final String imagePath;

 const FoodListWidget(
      {super.key,
      required this.title,
      required this.subTitles,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: screenWidth * 0.5,
        width: screenWidth * 0.4,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.2),
                  blurRadius: 3,
                  spreadRadius: 2,
                  offset:const Offset(0, .5)),
            ],
            borderRadius: BorderRadius.circular(8.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                  height: 100, width: 100, fit: BoxFit.cover, imagePath),
              Text(title),
              Row(
                children: [
                 const Icon(
                    Icons.location_on,
                    color: AppColors.onBoardButton,
                  ),
                  SizedBox(
                    width: 90,
                    child: Text(
                      subTitles,
                      style:const TextStyle(fontSize: 10, color: AppColors.grey),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FoodWidgetcol extends StatelessWidget {
  final BookingResturantsModels restaurant;

  const FoodWidgetcol({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: screenWidth * 0.3,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.2),
                  blurRadius: 3,
                  spreadRadius: 2,
                  offset:const Offset(0, .5))
            ],
            borderRadius: BorderRadius.circular(8.0)),
        child: Row(
          children: [
            Image.asset(
              restaurant.imagePath,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurant.title,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: AppColors.onBoardButton,
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          restaurant.subTitles,
                          style: const TextStyle(fontSize: 10),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        restaurant.reviewRatio,
                        style: const TextStyle(fontSize: 10),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      CustomButton(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const SearchScreen()));
                        },
                        color: AppColors.onBoardButton,
                        borderRadius: BorderRadius.circular(8.0),
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.05,
                            vertical: screenWidth * 0.005),
                        child: const ReuseableTextWidget(
                          text: "Book",
                          textColor: AppColors.white,
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
