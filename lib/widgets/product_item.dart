import 'package:banner_grid/screens/single_product_screen.dart';
import 'package:banner_grid/widgets/product_description_icon.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.fullDescription,
    required this.price,
    required this.imgUrl,
    required this.reviewCount,
  });

  final int id;
  final String title;
  final String description;
  final String fullDescription;
  final double price;
  final String imgUrl;
  final int reviewCount;

  void selectProduct(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return SingleProductScreen(
            id: id,
            title: title,
            description: description,
            fullDescription: fullDescription,
            price: price,
            imgUrl: imgUrl,
            reviewCount: reviewCount,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => selectProduct(context),
            child: Stack(
              children: [
                Container(
                  height: myHeight * 0.175,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xfff4b5a4),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  top: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset(
                      imgUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Color.fromARGB(255, 184, 137, 124),
            ),
          ),
          Text(
            description,
          ),
          const SizedBox(
            height: 7,
          ),
          const Divider(
            height: 0,
            color: Color(0xfff4b5a4),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$$price',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 184, 137, 124),
                ),
              ),
              const Row(
                children: [
                  ProdutDescriptionIcon(icon: Icons.favorite),
                  SizedBox(width: 5),
                  ProdutDescriptionIcon(icon: Icons.add),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
