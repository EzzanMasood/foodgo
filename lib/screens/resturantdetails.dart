import 'package:flutter/material.dart';
import 'package:foodgo/config/colors.dart';
import 'package:foodgo/config/style.dart';
import 'package:foodgo/components/buttons.dart';
import 'package:foodgo/config/constants.dart';
import 'package:foodgo/screens/fooddetails.dart';
import 'package:foodgo/screens/home/widgets/food_widget.dart';

class ResturantDetails extends StatefulWidget {
  const ResturantDetails({super.key});

  @override
  State<ResturantDetails> createState() => _ResturantDetailsState();
}

class _ResturantDetailsState extends State<ResturantDetails> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const ReuseableTextWidget(
          text: "Resturant Details",
          textColor: AppColors.white,
        ),
        backgroundColor: AppColors.onBoardButton,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: screenWidth * 0.025),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(
                right: screenWidth * 0.03,
                top: screenWidth * 0.03,
              ),
              child: Image.asset("assets/images/biryani.jpeg",
              width: screenWidth*0.9,
              ),
              
            ),
            const SizedBox(
              height: 10,
            ),
            const ReuseableTextWidget(
              text: "Tava Resturant",
              fontSize: 15,
              textColor: AppColors.black,
              fontWeight: FontWeight.bold,
            ),
            const Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star_border, color: Colors.yellow),
                ReuseableTextWidget(
                  text: "4.0 (999+ feedbacks)",
                  fontSize: 15,
                  textColor: AppColors.grey,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const ReuseableTextWidget(
              text: "Description",
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            const ReuseableTextWidget(
              text:
                  "It is a long established fact that a reader will \nbe distracted by the readable content of a \npage when looking at its layout.",
              fontSize: 13,
              textColor: AppColors.grey,
            ),
            const SizedBox(
              height: 15,
            ),
            const ReuseableTextWidget(
              text: "Facilities",
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                Icon(
                  Icons.check,
                  color: AppColors.onBoardButton,
                ),
                SizedBox(
                  width: 2,
                ),
                ReuseableTextWidget(
                  text: "Snack Bar",
                  fontSize: 12,
                  textColor: AppColors.grey,
                ),
                SizedBox(
                  width: 80,
                ),
                Icon(
                  Icons.check,
                  color: AppColors.onBoardButton,
                ),
                SizedBox(
                  width: 2,
                ),
                ReuseableTextWidget(
                  text: "Toilet",
                  fontSize: 12,
                  textColor: AppColors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                Icon(
                  Icons.check,
                  color: AppColors.onBoardButton,
                ),
                SizedBox(
                  width: 2,
                ),
                ReuseableTextWidget(
                  text: "Bikes and car parking",
                  fontSize: 12,
                  textColor: AppColors.grey,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.check,
                  color: AppColors.onBoardButton,
                ),
                SizedBox(
                  width: 2,
                ),
                ReuseableTextWidget(
                  text: "24/7 Water Facility",
                  fontSize: 12,
                  textColor: AppColors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReuseableTextWidget(
                      text: "Best Offers",
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      textColor: AppColors.black,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 180,
                ),
                CustomButton(
                  onTap: () {},
                  child: const ReuseableTextWidget(
                    text: "See all",
                    textColor: AppColors.onBoardButton,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 15,
                  color: AppColors.onBoardButton,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(images.length, (index) {
                  return FoodListWidget(
                    imagePath: images[index],
                    title: title[index],
                    subTitles: subTitles[index],
                  );
                }),
              ),
            ),
          ]),
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
          padding: const EdgeInsets.all(8.0),
          child: CustomButton(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const FoodDetails()));
              },
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.20, vertical: screenWidth * 0.02),
              color: AppColors.onBoardButton,
              borderRadius: BorderRadius.circular(8.0),
              child: const ReuseableTextWidget(
                text: "View Availabe tables",
                textColor: AppColors.white,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
    );
  }
}
