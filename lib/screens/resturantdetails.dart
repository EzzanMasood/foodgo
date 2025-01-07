import 'package:flutter/material.dart';
import 'package:foodgo/config/colors.dart';
import 'package:foodgo/config/style.dart';
import 'package:foodgo/components/buttons.dart';
import 'package:foodgo/screens/fooddetails.dart';
class ResturantDetails extends StatefulWidget {
  const ResturantDetails({super.key});

  @override
  State<ResturantDetails> createState() => _ResturantDetailsState();
}

class _ResturantDetailsState extends State<ResturantDetails> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title:const ReuseableTextWidget(text: "Resturant Details",
        textColor: AppColors.white,
        ),
        backgroundColor: AppColors.onBoardButton,
         leading: IconButton(
          onPressed: (){
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
       padding: EdgeInsets.only(left: screenWidth * 0.05),
        child: SingleChildScrollView(
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(right: screenWidth*0.06,top: screenWidth*0.06,),
                child: Image.asset("assets/images/biryani.jpeg"),
              ),
              const SizedBox(height: 10,),
          const    ReuseableTextWidget(text: "Tava Resturant",
              fontSize: 15,
              textColor: AppColors.black,
              fontWeight: FontWeight.bold,
              ),
                 const     Row(
                children: [
              
              Icon(Icons.star, color: Colors.yellow) ,
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star_border, color: Colors.yellow),
          
            ReuseableTextWidget(text: "4.0 (999+ feedbacks)",
            fontSize: 15,
            textColor: AppColors.grey,
            )
                ],
              ),
              const SizedBox( height: 15,),
            const   ReuseableTextWidget(text: "Description",
               fontSize: 15,
               fontWeight: FontWeight.bold,
               ),
               const SizedBox(height: 10,),
          const     ReuseableTextWidget(text: "It is a long established fact that a reader will",
               fontSize: 13,
               textColor: AppColors.grey,
               ),
             const   ReuseableTextWidget(text: "be distracted by the readable content of a ",
               fontSize: 13,
               textColor: AppColors.grey,
               ),
            const    ReuseableTextWidget(text: "page when looking at its layout.",
               fontSize: 13,
               textColor: AppColors.grey,
               ),
                const SizedBox( height: 15,),
            const   ReuseableTextWidget(text: "Facilities",
               fontSize: 15,
               fontWeight: FontWeight.bold,
               ),
               const SizedBox(height: 5,),
            const   Row(
                children: [
                    Icon(Icons.check,color: AppColors.onBoardButton,),
                    SizedBox(width: 2,),
                    ReuseableTextWidget(text: "Snack Bar",
                    fontSize: 12,
                    textColor: AppColors.grey,
                    ),
                    SizedBox( width: 80,),
                      Icon(Icons.check,color: AppColors.onBoardButton,),
                    SizedBox(width: 2,),
                    ReuseableTextWidget(text: "Toilet",
                    fontSize: 12,
                    textColor: AppColors.grey,
                    ),
                ],
               ),
                 const SizedBox(height: 5,),
            const   Row(
                children: [
                    Icon(Icons.check,color: AppColors.onBoardButton,),
                    SizedBox(width: 2,),
                    ReuseableTextWidget(text: "Bikes and car parking",
                    fontSize: 12,
                    textColor: AppColors.grey,
                    ),
                      SizedBox(width: 15,),
                      Icon(Icons.check,color: AppColors.onBoardButton,),
                    SizedBox(width: 2,),
                    ReuseableTextWidget(text: "24/7 Water Facility",
                    fontSize: 12,
                    textColor: AppColors.grey,
                    ),
                ],
               ),
          const     SizedBox(height: 20,),
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
                physics:const BouncingScrollPhysics(),
                child: Row(
                  children: [
                  
                     
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color:AppColors.lightgrey,
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
                         const     ReuseableTextWidget(
                                text: "Chicken Biryani",
                                fontSize: 15,
                                textColor: AppColors.black,
                              ),
                           const   Row(
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
                           const   ReuseableTextWidget(
                                text: "resturant",
                                fontSize: 12,
                                textColor: AppColors.grey,
                            
                              ),
                            ],
                          ),
                        ),
                      ),
                    
                    const SizedBox(width: 10,),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color:AppColors.lightgrey,
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
                         const     ReuseableTextWidget(
                                text: "Chicken Biryani",
                                fontSize: 15,
                                textColor: AppColors.black,
                              ),
                           const   Row(
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
                      const SizedBox(width: 10,),
                       Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color:AppColors.lightgrey,
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
                            const  ReuseableTextWidget(
                                text: "Chicken Biryani",
                                fontSize: 15,
                                textColor: AppColors.black,
                              ),
                         const     Row(
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
                           const   ReuseableTextWidget(
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
            ],
          ),
        ),
      ),
        bottomNavigationBar: 
    Padding(
      padding: const EdgeInsets.only(left: 16.5,right: 16.5),
      child: CustomButton(onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const FoodDetails()));
      }, 
      height: screenWidth*0.1,
      width: screenWidth*0.2,
      borderRadius: BorderRadius.circular(8.0),
      color: AppColors.onBoardButton,
      padding: EdgeInsets.symmetric(horizontal: screenWidth*0.25,vertical: screenWidth*0.02),
      child:const ReuseableTextWidget(text: "View available tables",
      textColor: AppColors.white,
      fontSize: 15,
      )
      ),
    ),
    );
  }
}