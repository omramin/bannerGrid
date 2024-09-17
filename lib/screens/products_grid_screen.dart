import 'package:banner_grid/widgets/product_description_icon.dart';
import 'package:banner_grid/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:banner_grid/dummy_products.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: ProdutDescriptionIcon(
              icon: Icons.search,
            ),
          ),
        ],
        centerTitle: true,
        title: const Text(
          'Special Offer',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            height: 22,
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 184, 137, 124),
          ),
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 50,
        ),
        children: DUMMY_PRODUCTS
            .map(
              (proData) => ProductItem(
                id: proData.id,
                title: proData.title,
                description: proData.description,
                fullDescription: proData.fullDescription,
                price: proData.price,
                imgUrl: proData.imgUrl,
                reviewCount: proData.reviewCount,
              ),
            )
            .toList(),
      ),
    );
  }
}
