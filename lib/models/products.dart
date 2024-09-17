class Products {
  final int id;
  final String title;
  final String description;
  final String fullDescription;
  final double price;
  final String imgUrl;
  final int reviewCount;

  const Products({
    required this.id,
    required this.title,
    required this.description,
    required this.fullDescription,
    required this.price,
    required this.imgUrl,
    required this.reviewCount,
  });
}
