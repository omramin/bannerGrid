import 'package:flutter/material.dart';

class ProdutDescriptionIcon extends StatelessWidget {
  const ProdutDescriptionIcon({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xfff4b5a4),
      ),
      child: Icon(
        color: Colors.white,
        // weight: ,
        icon,
        size: 15,
      ),
    );
  }
}
