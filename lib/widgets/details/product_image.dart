import 'package:electrical_store/constants.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.size, required this.image});

  final Size size;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
          height: size.width * 0.7,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: size.width * 0.7,
                width: size.width * 0.7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Image.asset(
                image,
                fit: BoxFit.cover,
                width: size.width * 0.7,
                height: size.width * 0.7,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
