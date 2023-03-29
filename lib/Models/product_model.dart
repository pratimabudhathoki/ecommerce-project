class AllProduct {
  final int id;
  final String title;
  final String description;
  final String price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final String brand;
  final String category;
  final String thumbnail;
  final List<String> images;

  AllProduct({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.images,
    required this.thumbnail,
  });

  factory AllProduct.fromJson(Map<String, dynamic> json) => AllProduct(
      id: json["id"],
      title: json["title"],
      description: json[" description"],
      price: json[" price"],
      discountPercentage: json["discountPercentage"],
      rating: json["rating"],
      stock: json["stock"],
      brand: json[" brand"],
      category: json["category"],
      images: json["images"],
      thumbnail: json["thumbnail"]);
}
