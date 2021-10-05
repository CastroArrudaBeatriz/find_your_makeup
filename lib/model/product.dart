class Product {
  final int id;
  final String brand;

  final String name;
  final String price;
  final String image_link;
  final String product_link;

  Product(
      {required this.id,
      required this.brand,
      required this.name,
      required this.price,
      required this.image_link,
      required this.product_link});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        brand: json['brand'],
        name: json['name'],
        price: json['price'],
        image_link: json['image_link'],
        product_link: json['product_link']);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "brand": brand,
      "name": name,
      "price": price,
      "image_link": image_link,
      "product_link": product_link
    };
  }
}
