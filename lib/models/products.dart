class Product {
  final String image, title,expiry, description,quantity,number;
  final int price,id;
  
  Product({
  required this.id,
  required this.image,
  required this.title,
  required this.price,
  required this.description,
  required this.quantity,
  required this.expiry,
  required this.number,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "SUN CREAM",
      price: 234,
      quantity: "4",
      description: dummyText,
      image: "assets/images/cream.png",
      expiry:" 3 months",
      number: "09639556633"
      ),
  Product(
      id: 2,
      title:"SUN CREAM" ,
      price: 234,
      quantity: "4",
      description: dummyText,
      image: "assets/images/cream.png",
      expiry:" 3 months",
      number: "09639556633"),
  Product(
      id: 3,
      title: "SUN CREAM",
      price: 234,
      quantity: "4",
      description: dummyText,
      image: "assets/images/cream.png",
      number: "09639556633",
      expiry:" 3 months"),
  Product(
      id: 4,
      title: "SUN CREAM",
      price: 234,
      quantity: "4",
      description: dummyText,
      image: "assets/images/cream.png",
      expiry:" 3 months",
      number: "09639556633"
      ),
  Product(
      id: 5,
      title: "SUN CREAM",
      price: 234,
      quantity: "4",
      description: dummyText,
      image: "assets/images/cream.png",
      expiry:" 3 months",
      number: "09639556633"),
  Product(
    id: 6,
    title: "SUN CREAM",
    price: 234,
    quantity: "4",
    description: dummyText,
    image: "assets/images/cream.png",
    expiry:" 3 months",
    number: "09639556633"
  ),
];
String dummyText =
    "this is a very useful cream for all skun types and last 24 hours  this is a very useful cream for all skun types and last 24 hoursthis is a very useful cream for all skun types and last 24 hours  ";