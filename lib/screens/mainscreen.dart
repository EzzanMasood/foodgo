import 'package:flutter/material.dart';
import 'package:foodgo/components/boxes.dart';
import 'package:foodgo/components/buttons.dart';
import 'package:foodgo/config/colors.dart';
import 'package:foodgo/config/style.dart';
import 'package:foodgo/screens/search/search.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const ReuseableTextWidget(
          text: "Homepage",
          textColor: AppColors.white,
        ),
        backgroundColor: AppColors.darkgreen,
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.white),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      drawer: Drawer(
        backgroundColor: AppColors.white,
        child: ListView(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchScreen()));
              },
              child: BoxField(
                hintText: "What do you want to eat",
                prefixIcon: Icons.search,
                suffixIcon: Icons.cancel,
                width: size.width * 0.8,
                height: size.height * 0.05,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: screenWidth * 0.1, left: screenWidth * 0.1),
              child: Container(
                width: screenWidth * 1,
                height: screenWidth * 0.4,
                decoration:
                    const BoxDecoration(gradient: AppColors.reusableGradient),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ReuseableTextWidget(
                        text: "Best Offer",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        textColor: AppColors.white,
                      ),
                      const ReuseableTextWidget(
                        text: "For March",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        textColor: AppColors.white,
                      ),
                      const ReuseableTextWidget(
                        text: "We are here with the best",
                        fontSize: 10,
                        textColor: AppColors.white,
                      ),
                      const ReuseableTextWidget(
                        text: "best burgers in town",
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
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: screenWidth * 0.1, right: screenWidth * 0.1),
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
                  width: 15,
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
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.1),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: AppColors.lightgrey,
                      ),
                   
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/biryani.jpeg",
                              height: 90,
                              width: 90,
                            ),
                            const ReuseableTextWidget(
                              text: "Chicken Biryani",
                              fontSize: 15,
                              textColor: AppColors.black,
                            ),
                            const Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: AppColors.onBoardButton,
                                ),
                                ReuseableTextWidget(
                                  text: "Ambrasia hotel &",
                                  fontSize: 12,
                                  textColor: AppColors.grey,
                                ),
                              ],
                            ),
                            const ReuseableTextWidget(
                              text: "resturant",
                              fontSize: 12,
                              textColor: AppColors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: AppColors.lightgrey,
                    ),
                    height: 150,
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/biryani.jpeg",
                            height: 70,
                            width: 0,
                          ),
                          const ReuseableTextWidget(
                            text: "Chicken Biryani",
                            fontSize: 15,
                            textColor: AppColors.black,
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: AppColors.onBoardButton,
                              ),
                              ReuseableTextWidget(
                                text: "Ambrasia hotel &",
                                fontSize: 12,
                                textColor: AppColors.grey,
                              ),
                            ],
                          ),
                          const ReuseableTextWidget(
                            text: "resturant",
                            fontSize: 12,
                            textColor: AppColors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: AppColors.lightgrey,
                    ),
                    height: 150,
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/biryani.jpeg",
                            height: 70,
                            width: 0,
                          ),
                          const ReuseableTextWidget(
                            text: "Chicken Biryani",
                            fontSize: 15,
                            textColor: AppColors.black,
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: AppColors.onBoardButton,
                              ),
                              ReuseableTextWidget(
                                text: "Ambrasia hotel &",
                                fontSize: 12,
                                textColor: AppColors.grey,
                              ),
                            ],
                          ),
                          const ReuseableTextWidget(
                            text: "resturant",
                            fontSize: 12,
                            textColor: AppColors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: screenWidth * 0.1, right: screenWidth * 0.1),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReuseableTextWidget(
                        text: "Bookings Resturant",
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        textColor: AppColors.black,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 60,
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
                  padding: EdgeInsets.only(
                      left: screenWidth * 0.1, right: screenWidth * 0.04),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: AppColors.lightgrey,
                    ),
                    width: screenWidth * 0.9,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/biryani.jpeg",
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(width: 5),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                        text: "Ambrosla hotel & Resturant",
                                        fontSize: 12,
                                        textColor: AppColors.grey,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                  padding: EdgeInsets.only(
                      left: screenWidth * 0.1, right: screenWidth * 0.04),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: AppColors.lightgrey,
                    ),
                    width: screenWidth * 0.9,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/biryani.jpeg",
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(width: 5),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                        text: "Ambrosla hotel & Resturant",
                                        fontSize: 12,
                                        textColor: AppColors.grey,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                  padding: EdgeInsets.only(
                      left: screenWidth * 0.1, right: screenWidth * 0.04),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: AppColors.lightgrey,
                    ),
                    width: screenWidth * 0.9,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/biryani.jpeg",
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(width: 5),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                        text: "Ambrosla hotel & Resturant",
                                        fontSize: 12,
                                        textColor: AppColors.grey,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
            )
          ],
        ),
      ),
    );
  }
}
