import 'package:flutter/material.dart';
import 'package:foodgo/components/boxes.dart';
import 'package:foodgo/config/colors.dart';
import 'package:foodgo/config/style.dart';
import 'package:foodgo/components/buttons.dart';
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
    final screenWidth = MediaQuery.of(context).size.width;
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
            }),
        titleSpacing: 8,
        title: Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.05),
          child: BoxField(
            hintText: "Tava Resturant",
            prefixIcon: Icons.search,
            suffixIcon: Icons.cancel,
            width: size.width * 1,
            height: size.width * 0.09,
            borderColor: AppColors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: AppColors.lightgrey,
                ),
                width: 370,
                height: 350,
                child: Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.05),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReuseableTextWidget(
                        text: "Tava Resturant",
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
                            text: "Ambrosla Hotel & Resturant",
                            textColor: AppColors.grey,
                            fontSize: 12,
                          )
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
                                  )
                                ],
                              ),
                              ReuseableTextWidget(
                                text: "10:00 AM - 12:00 PM ",
                                textColor: AppColors.black,
                                fontSize: 12,
                              )
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
                            text: "Visit the resturant",
                            fontSize: 12,
                            textColor: AppColors.blue,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: AppColors.lightgrey,
                ),
                height: 300,
                width: 370,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: screenWidth * 0.05, top: 10),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ReuseableTextWidget(
                                text: "List other Resturants",
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                textColor: AppColors.black,
                              ),
                              ReuseableTextWidget(
                                text: "Check your city nearby location",
                                textColor: AppColors.grey,
                                fontSize: 12,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 50,
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
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.05),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: AppColors.white,
                            ),
                            width: screenWidth * 0.8,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/images/biryani.jpeg",
                                        height: 50,
                                        width: 50,
                                      ),
                                      const SizedBox(width: 5),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ReuseableTextWidget(
                                            text: "Ambrosla hotel & Resturant",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            textColor: AppColors.black,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on_sharp,
                                                color: AppColors.onBoardButton,
                                                size: 15,
                                              ),
                                              ReuseableTextWidget(
                                                text:
                                                    "Ambrosla hotel & Resturant",
                                                fontSize: 12,
                                                textColor: AppColors.grey,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                              ),
                                              ReuseableTextWidget(
                                                text: "4.7",
                                                fontSize: 12,
                                                textColor: AppColors.grey,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: CustomButton(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SearchScreen()));
                                      },
                                      color: AppColors.onBoardButton,
                                      borderRadius: BorderRadius.circular(8.0),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: screenWidth * 0.05),
                                      child: const ReuseableTextWidget(
                                        text: "Book",
                                        textColor: AppColors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                       const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.05),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: AppColors.white,
                            ),
                            width: screenWidth * 0.8,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/images/biryani.jpeg",
                                        height: 50,
                                        width: 50,
                                      ),
                                      const SizedBox(width: 5),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ReuseableTextWidget(
                                            text: "Ambrosla hotel & Resturant",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            textColor: AppColors.black,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on_sharp,
                                                color: AppColors.onBoardButton,
                                                size: 15,
                                              ),
                                              ReuseableTextWidget(
                                                text:
                                                    "Ambrosla hotel & Resturant",
                                                fontSize: 12,
                                                textColor: AppColors.grey,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                              ),
                                              ReuseableTextWidget(
                                                text: "4.7",
                                                fontSize: 12,
                                                textColor: AppColors.grey,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: CustomButton(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SearchScreen()));
                                      },
                                      color: AppColors.onBoardButton,
                                      borderRadius: BorderRadius.circular(8.0),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: screenWidth * 0.05),
                                      child: const ReuseableTextWidget(
                                        text: "Book",
                                        textColor: AppColors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                       const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.05),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: AppColors.white,
                            ),
                            width: screenWidth * 0.8,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/images/biryani.jpeg",
                                        height: 50,
                                        width: 50,
                                      ),
                                      const SizedBox(width: 5),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ReuseableTextWidget(
                                            text: "Ambrosla hotel & Resturant",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            textColor: AppColors.black,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on_sharp,
                                                color: AppColors.onBoardButton,
                                                size: 15,
                                              ),
                                              ReuseableTextWidget(
                                                text:
                                                    "Ambrosla hotel & Resturant",
                                                fontSize: 12,
                                                textColor: AppColors.grey,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                              ),
                                              ReuseableTextWidget(
                                                text: "4.7",
                                                fontSize: 12,
                                                textColor: AppColors.grey,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: CustomButton(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SearchScreen()));
                                      },
                                      color: AppColors.onBoardButton,
                                      borderRadius: BorderRadius.circular(8.0),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: screenWidth * 0.05),
                                      child: const ReuseableTextWidget(
                                        text: "Book",
                                        textColor: AppColors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    bottomNavigationBar: 
    Padding(
      padding: const EdgeInsets.only(left: 16.5,right: 16.5),
      child: CustomButton(onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const ResturantDetails()));
      }, 
      height: screenWidth*0.1,
      width: screenWidth*0.2,
      borderRadius: BorderRadius.circular(8.0),
      color: AppColors.onBoardButton,
      padding: EdgeInsets.symmetric(horizontal: screenWidth*0.35,vertical: screenWidth*0.02),
      child:const ReuseableTextWidget(text: "Booking",
      textColor: AppColors.white,
      fontSize: 15,

      )),
    ),
    );
  }
}
