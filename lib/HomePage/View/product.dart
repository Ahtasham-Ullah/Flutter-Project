 

class Categorie1 {
  final String name;
   final  String images;


 Categorie1(
  this.name,
  this.images,
 );



 }

 
 List <Categorie1> Categories =[
  
    Categorie1("Electronics & \n Appliances", "assets/images/Rectangle 11@3x.png"),
    Categorie1("Sports & \n Outdoors", "assets/images/Rectangle 13@3x.png"),
    Categorie1("Health & \n Personal ", "assets/images/Rectangle 14@3x.png"),
    Categorie1("Arts & \n Crafts", "assets/images/Rectangle 15@3x.png"),
    Categorie1("Toys, Games \n  & Baby", "assets/images/Rectangle 16@3x.png"),
Categorie1("Electronics  & \n Appliances", "assets/images/Rectangle 11@3x.png"),
    Categorie1("Sports & \n Outdoors", "assets/images/Rectangle 13@3x.png"),
 ];

 class Product{
  String image;
  String detail;
  String price;
  String Oldprice;


  Product(
    this.detail,
    this.image,
    this.price,
    this.Oldprice,
  );
 }

 List <Product> Products=[
  Product("Huawei Talk band B4 Lite \n - Blue Watch", "assets/images/Image 5.png", "AED 49.50","AED 59.50"),
  Product("Huawei Talk band B3 Lite \n- Blue Watch", "assets/images/Image 5@3x (1).png", "AED 49.50","AED 59.50"),
   Product("Huawei Talk band B4 Lite \n - Blue Watch", "assets/images/Image 5.png", "AED 49.50","AED 59.50"),
  Product("Huawei Talk band B3 Lite \n- Blue Watch", "assets/images/Image 5@3x (1).png", "AED 49.50","AED 59.50"),
  
 ];