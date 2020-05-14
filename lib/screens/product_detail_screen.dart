import 'package:flutter/material.dart';
import '../widgets/product_detail_area.dart';

class ProductDetailScreen extends StatefulWidget {
  static const routeName = '/product-detail-screen';

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  AnimationController controller;
  Animation<Offset> offset;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        elevation: 0.0,
      ),
      backgroundColor: Colors.red[400],
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: MediaQuery.of(context).size.height * 0.1,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                child: Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.9,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 50,
                        horizontal: 15,
                      ),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              height: 300,
                              child: Image.asset(
                                'assets/images/cereal.jpg',
                                repeat: ImageRepeat.noRepeat,
                                fit: BoxFit.contain,
                              ),
                            ),
                            ProductDetailArea(),
                          ],
                        ),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
