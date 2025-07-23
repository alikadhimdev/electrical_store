import 'package:electrical_store/constants.dart';
import 'package:electrical_store/models/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    required this.itemId,
    required this.press,
  }) : super(key: key);

  final int itemId;
  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: kDefaultPadding,
        horizontal: kDefaultPadding,
      ),
      height: 190,
      child: InkWell(
        onTap: () => press(),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 25,
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
            Positioned(
              top: -20,
              left: 0,
              width: 150,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 160,
                width: 150,
                child: Image.asset(product.image),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 150,
                child: Padding(
                  padding: const EdgeInsets.only(right: kDefaultPadding / 3),
                  child: Column(
                    spacing: kDefaultPadding / 3,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),

                      Text(
                        product.subTitle,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),

                      Padding(
                        padding: const EdgeInsets.all(kDefaultPadding / 2),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: kDefaultPadding / 5,
                            horizontal: kDefaultPadding * 1.5,
                          ),
                          decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(22),
                          ),

                          child: Text(
                            'السعر ${product.price} الف',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
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
