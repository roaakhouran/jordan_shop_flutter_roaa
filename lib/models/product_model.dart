class ProductModel {
  final String id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String imageUrl;
  bool isFavorite;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.imageUrl,
    this.isFavorite = false,
  });
}