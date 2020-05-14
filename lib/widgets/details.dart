import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Text('Title'),
        Text('Detailed Description'),

        Text('Price: \$6'),
        
      ],)
    );
  }
}