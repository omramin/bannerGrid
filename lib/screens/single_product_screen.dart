import 'package:flutter/material.dart';
import 'package:banner_grid/widgets/product_description_icon.dart';

class SingleProductScreen extends StatelessWidget {
  const SingleProductScreen({
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

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            height: 22,
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 184, 137, 124),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: myHeight * 0.35,
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
                const SizedBox(
                  height: 20,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  fullDescription,
                ),
                const SizedBox(
                  height: 20,
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
                ),
                const SizedBox(
                  height: 15,
                ),
                //--------------------Reviews
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Users reviews',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: List.generate(
                        reviewCount,
                        (index) => const Icon(
                          Icons.star,
                          color: Color(0xfff4b5a4),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            // const SizedBox(height: 0),
            SizedBox(
              width: myWidth * 0.45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xfff4b5a4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Add To Cart',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
