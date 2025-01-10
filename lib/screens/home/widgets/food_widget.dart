import 'package:flutter/material.dart';
import 'package:foodgo/config/colors.dart';
import 'package:foodgo/models/booking_resturants_models.dart';
class FoodListWidget extends StatelessWidget {
  final String title;
  final String subTitles;
  final String imagePath;

  FoodListWidget(
      {super.key,
      required this.title,
      required this.subTitles,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
         decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.2),
                          blurRadius: 3,
                          spreadRadius: 2,
                          offset: Offset(0, .5))
                    ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(height: 100, width: 100, fit: BoxFit.cover, imagePath),
            Text(title),
            Row(
              children: [
                Icon(Icons.location_on, color: AppColors.onBoardButton,),
                SizedBox(
                  width: 90,
                  child: Text(
                    subTitles,
                    style: TextStyle(fontSize: 10,color: AppColors.grey),
                  ),
                ),
              ],
            )
          ],
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.2),
                          blurRadius: 3,
                          spreadRadius: 2,
                          offset: Offset(0, .5))
                    ]),
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
                      const Icon(Icons.location_on),
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
                      const Icon(Icons.star),
                      const SizedBox(width: 4),
                      Text(
                        restaurant.reviewRatio,
                        style: const TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(restaurant.buttonTitle),
            ),
          ],
        ),
      ),
    );
  }
}
