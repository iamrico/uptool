import 'package:flutter/material.dart';
import '../widgets/product_item_card.dart';
import '../widgets/product.dart';

class ProductScreen extends StatefulWidget {
  static const routeName = '/product_category_screen';

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30.0),
                  ),
                  child: FadeInImage.assetNetwork(
                    placeholder: 'assets/images/oven_hero.jpg',
                    image:
                        'https://pbs.twimg.com/profile_images/1229269778507784193/_hXb8fOB_400x400.jpg',
                  ),
                ),
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 10.0),
                      blurRadius: 6.0,
                    )
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30.0),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width,
                      decoration: new BoxDecoration(
                        color: Colors.black45,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 30.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.search),
                                  color: Colors.white,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                left: 30,
                bottom: 40,
                child: Row(
                  children: <Widget>[
                    Text(
                      'ALL',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontFamily: 'Saira',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 0.1,
                childAspectRatio: 100 / 140,
              ),
              itemCount: 10,
              itemBuilder: (_, i) => Product(),
            ),
          ),
        ],
      ),
    );
  }
}
