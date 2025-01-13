class AddToCartModel{
 final String imagePath;
 final String title;
 final String subTitles;
final String quantity;
AddToCartModel({required this.imagePath, required this.title,required this.subTitles,required this.quantity});
}
List<AddToCartModel> addToCartList = [
  AddToCartModel(
    imagePath: "assets/images/katsu.jpeg",
    title: "Almond cream Crosinet",
    subTitles: "\$15",
    quantity: "x1",
  ),
   AddToCartModel(
    imagePath: "assets/images/katsu.jpeg",
    title: "Almond cream Crosinet",
    subTitles: "\$15",
    quantity: "x2",
  ),
];
