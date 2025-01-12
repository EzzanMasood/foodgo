import 'package:flutter/material.dart';
import 'package:foodgo/components/boxes.dart';
import 'package:foodgo/components/buttons.dart';
import 'package:foodgo/config/colors.dart';
import 'package:foodgo/config/style.dart';
import 'package:foodgo/models/booking_resturants_models.dart';
import 'package:foodgo/screens/home/widgets/food_widget.dart';
import 'package:foodgo/screens/resturantdetails.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.onBoardButton,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        titleSpacing: 8,
        title: Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.05),
          child: BoxField(
            hintText: "Tava Restaurant",
            prefixIcon: Icons.search,
            suffixIcon: Icons.cancel,
            width: size.width * 1,
            height: size.width * 0.09,
            borderColor: AppColors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
        width: screenWidth*0.95,
        height: screenWidth*0.95,
  
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8.0),
                 boxShadow: [
              BoxShadow(
                  color: AppColors.grey.withOpacity(.2),
                  blurRadius: 3,
                  spreadRadius: 2,
                  offset:const Offset(0, .5))
            ],
              ),
             
             
              child: Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.05),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReuseableTextWidget(
                      text: "Tava Restaurant",
                      textColor: AppColors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.onBoardButton,
                        ),
                        ReuseableTextWidget(
                          text: "Ambrosla Hotel & Restaurant",
                          textColor: AppColors.grey,
                          fontSize: 12,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Image(
                      image: AssetImage(
                        "assets/images/biryani.jpeg",
                      ),
                      width: 250,
                      height: 200,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.av_timer,
                                  color: AppColors.onBoardButton,
                                ),
                                ReuseableTextWidget(
                                  text: "Open today",
                                  textColor: AppColors.grey,
                                  fontSize: 12,
                                ),
                              ],
                            ),
                            ReuseableTextWidget(
                              text: "10:00 AM - 12:00 PM ",
                              textColor: AppColors.black,
                              fontSize: 12,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Icon(
                          Icons.directions,
                          color: AppColors.blue,
                        ),
                        ReuseableTextWidget(
                          text: "Visit the restaurant",
                          fontSize: 12,
                          textColor: AppColors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: bookingResturantsList.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return FoodWidgetcol(restaurant: bookingResturantsList[index]);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: screenWidth*0.1,
        height: screenWidth*0.15,
        decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8.0),
                 boxShadow: [
              BoxShadow(
                  color: AppColors.grey.withOpacity(.2),
                  blurRadius: 3,
                  spreadRadius: 2,
                  offset:const Offset(0, .5))
            ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ResturantDetails()));
                },
                             padding: EdgeInsets.symmetric(horizontal: screenWidth*0.40 ,vertical:screenWidth* 0.02),
                color: AppColors.onBoardButton,
                borderRadius: BorderRadius.circular(8.0),
                 child:const ReuseableTextWidget(text: "Booking",
                 textColor: AppColors.white,
                 fontWeight: FontWeight.bold,
                 )),
              ),
      ),
    );
  }
}
