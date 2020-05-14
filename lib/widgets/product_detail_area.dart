import 'package:flutter/material.dart';

class ProductDetailArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Text(
                'Title',
                style: TextStyle(
                  fontFamily: 'Josefin Sans',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Description',
                style: TextStyle(
                  fontFamily: 'Josefin Sans',
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 80),
              Text('\$20'),
              SizedBox(height: 15),
            ],
          ),
        ),
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          color: Colors.grey[100],
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Add to Cart'),
              Icon(Icons.add),
            ],
          ),
        ),
      ],
    );
  }
}
