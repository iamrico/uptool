import 'package:flutter/material.dart';
import '../screens/product_detail_screen.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(ProductDetailScreen.routeName);
        },
        enableFeedback: false,
        child: Container(
          width: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Container(
                  // decoration: BoxDecoration(color: Colors.black,),
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    'assets/images/cereal.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 45, top: 15),
                    child: Text(
                      '\$6.50',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Josefin Sans',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 45, top: 15),
                    child: Container(
                      width: 100,
                      child: Text(
                        'Honey Bunch of Oats',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 45, top: 15),
                    child: Text(
                      '500g',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontFamily: 'Josefin Sans',
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
