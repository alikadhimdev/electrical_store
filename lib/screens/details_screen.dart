import 'package:electrical_store/constants.dart';
import 'package:electrical_store/models/product.dart';
import 'package:electrical_store/widgets/details/details_body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(product: product),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.keyboard_double_arrow_right,
          color: kPrimaryColor,
          size: kDefaultPadding * 2,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text("رجوع", style: Theme.of(context).textTheme.bodySmall),
    );
  }
}
