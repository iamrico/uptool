import 'package:flutter/material.dart';
import '../screens/product_category_screen.dart';

class CategoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(ProductScreen.routeName);
          },
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: <Widget>[
                Container(
                  height: 40,
                  child: Image.asset(
                    'assets/images/furniture-and-household.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Oven',
                        style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Description',
                        style: TextStyle(
                          fontFamily: 'Josefin Sans',
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
