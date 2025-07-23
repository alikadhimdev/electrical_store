import 'package:electrical_store/constants.dart';
import 'package:electrical_store/models/product.dart';
import 'package:electrical_store/widgets/details/color_dot.dart';
import 'package:electrical_store/widgets/details/product_image.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductImage(size: size, image: product.image),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: kDefaultPadding,
                children: [
                  ColorDot(fillColor: Colors.teal, isSelected: true),
                  ColorDot(fillColor: Colors.blueAccent, isSelected: false),
                  ColorDot(fillColor: Colors.red, isSelected: false),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding / 2,
                ),
                child: Text(
                  product.title,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              Text(
                'السعر: ${product.price} الف',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  shadows: [
                    Shadow(
                      offset: Offset(2, 2), // اتجاه الظل
                      blurRadius: 1, // تمويه الظل
                      color: Colors.black26, // لون الظل
                    ),
                  ],
                  color: kSecondaryColor,
                ),
              ),
            ],
          ),
        ),

        Expanded(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 1.5,
                vertical: kDefaultPadding / 2,
              ),
              child: Text(
                product.description,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
