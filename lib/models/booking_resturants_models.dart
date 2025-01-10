class BookingResturantsModels {
  final String imagePath;
  final String title;
  final String subTitles;
  final String reviewRatio;
  final String buttonTitle;
  BookingResturantsModels({required this.buttonTitle,required this.imagePath, required this.title, required this.subTitles, required this.reviewRatio});


}

List<BookingResturantsModels>  bookingResturantsList = [


BookingResturantsModels(buttonTitle: "Book", imagePath: "assets/images/biryani.jpeg", title: "Ambrosia Hotel & Restaurant", subTitles: "Ambrosia Hotel & Restaurant", reviewRatio: "4.6"),
BookingResturantsModels(buttonTitle: "Book", imagePath: "assets/images/sauce.jpeg", title: "Tava Restaurant", subTitles: "Okara", reviewRatio: "4.5"),
BookingResturantsModels(buttonTitle: "Book", imagePath: "assets/images/biryani.jpeg", title: "Mac donald", subTitles: "LAhore", reviewRatio: "4.2"),
BookingResturantsModels(buttonTitle: "Book", imagePath: "assets/images/katsu.jpeg", title: "kfc", subTitles: "FAisalabad", reviewRatio: "2.6"),
BookingResturantsModels(buttonTitle: "Book", imagePath: "assets/images/katsu.jpeg", title: "chizious", subTitles: "Multan", reviewRatio: "7.6"),
];

