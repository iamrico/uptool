import 'package:flutter/material.dart';
import '../widgets/details.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 100,
      child: Card(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/oven_product.jpg', fit: BoxFit.contain,),
          ],
        ),
      ),
    );
  }
}
