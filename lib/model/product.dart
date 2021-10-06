class Product {
  final String brand;

  final String name;
  final String price;
  final String imageLink;
  final String productLink;

  Product(
      {
      required this.brand,
      required this.name,
      required this.price,
      required this.imageLink,
      required this.productLink});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        brand: json['brand'],
        name: json['name'],
        price: json['price'],
        imageLink: json['image_link'],
        productLink: json['product_link']);
  }

  Map<String, dynamic> toJson() {
    return {
      "brand": brand,
      "name": name,
      "price": price,
      "image_link": imageLink,
      "product_link": productLink
    };
  }
}
