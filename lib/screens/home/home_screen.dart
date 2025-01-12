import 'package:flutter/material.dart';
import 'package:foodgo/config/colors.dart';
import 'package:foodgo/config/constants.dart';
import 'package:foodgo/config/style.dart';
import 'package:foodgo/models/booking_resturants_models.dart';
import 'package:foodgo/screens/home/widgets/food_widget.dart';
import 'package:foodgo/components/boxes.dart';
import 'package:foodgo/components/buttons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.onBoardButton,
        title: const ReuseableTextWidget(
          text: "Home Page",
          textColor: AppColors.white,
        ),
        iconTheme:const IconThemeData(color: AppColors.white),
        centerTitle: true,
        actions: const [
          Icon(Icons.notifications),
        ],
      ),
      drawer: const Drawer(),
      body: Column(children: [
        BoxField(
          hintText: "What do you want to eat",
          prefixIcon: Icons.search,
          suffixIcon: Icons.cancel,
          width: size.width * 0.95,
          height: size.height * 0.05,
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: screenWidth * 0.95,
          height: screenWidth * 0.4,
          decoration: const BoxDecoration(gradient: AppColors.reusableGradient),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ReuseableTextWidget(
                  text: "Best Offer \nFor March",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  textColor: AppColors.white,
                ),
                const ReuseableTextWidget(
                  text: "We are here with the best \nburgers in town",
                  fontSize: 10,
                  textColor: AppColors.white,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  onTap: () {},
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.05,
                      vertical: screenWidth * 0.005),
                  borderRadius: BorderRadius.circular(8.0),
                  color: AppColors.white,
                  child: const ReuseableTextWidget(
                      text: "Buy Now", textColor: AppColors.darkgreen),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.03,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReuseableTextWidget(
                    text: "Today new Arivable",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    textColor: AppColors.black,
                  ),
                  ReuseableTextWidget(
                    text: "Best of the today food list update",
                    textColor: AppColors.grey,
                    fontSize: 12,
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 85,
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
          height: 15,
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
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: screenWidth * 0.03,
          ),
          child: Row(
            children: [
              const ReuseableTextWidget(
                text: "Bookings Resturant",
                fontSize: 15,
                fontWeight: FontWeight.bold,
                textColor: AppColors.black,
              ),
              const SizedBox(
                width: 130,
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
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: bookingResturantsList.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return FoodWidgetcol(restaurant: bookingResturantsList[index]);
            },
          ),
        )
      ]),
    );
  }
}
