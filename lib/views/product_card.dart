import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String rating;
  final String image;
  const ProductCard({super.key, required this.title, required this.price, required this.rating, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.all(5),
                child: Image.network(image, fit: BoxFit.cover,)),
            Text(title, style: TextStyle(fontSize: 20),),
            Text(rating),
            Text('\$$price', style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
