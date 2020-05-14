import 'package:flutter/material.dart';
import '../widgets/category_card.dart';
import '../widgets/favorite_card.dart';
import '../widgets/app_drawer.dart';
import '../widgets/menu.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Menu(),
        AnimatedPositioned(
          duration: Duration(milliseconds: 300),
          top: _isCollapsed ? 0 : 0.05 * height,
          bottom: _isCollapsed ? 0 : 0.05 * height,
          left: _isCollapsed ? 0 : 0.5 * width,
          right: _isCollapsed ? 0 : -0.5 * width,
          child: Material(
            borderRadius: BorderRadius.circular(_isCollapsed ? 0 : 20.0),
            elevation: 20.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(_isCollapsed ? 0 : 20.0),
              child: Scaffold(
                backgroundColor: Colors.grey[100],
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 30,
                      ),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.asset(
                        'assets/images/shopping_cart.png',
                        width: 30,
                      ),
                      onPressed: null,
                    ),
                  ],
                  leading: IconButton(
                    icon: Image.asset(
                      'assets/images/menu.png',
                      width: 30,
                    ),
                    onPressed: () {
                      // _drawerKey.currentState.openDrawer();
                      setState(() {
                        _isCollapsed = !_isCollapsed;
                      });
                    },
                  ),
                  title: Text(
                    'UpTool',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontFamily: 'Josefin Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  elevation: 0.0,
                  centerTitle: true,
                ),
                body: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: SingleChildScrollView(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 10),
                            Text(
                              'favourites',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 40,
                                color: Theme.of(context).primaryColor,
                                fontFamily: 'Josefin Sans',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 150,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  FavoriteCard(),
                                  FavoriteCard(),
                                  FavoriteCard(),
                                  FavoriteCard(),
                                  FavoriteCard(),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'ALL',
                              style: TextStyle(
                                fontSize: 20,
                                color: Theme.of(context).primaryColor,
                                fontFamily: 'Josefin Sans',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            Expanded(
                              child: ListView(
                                children: <Widget>[
                                  CategoryCard(),
                                  CategoryCard(),
                                  CategoryCard(),
                                  CategoryCard(),
                                  CategoryCard(),
                                  CategoryCard(),
                                  CategoryCard(),
                                  CategoryCard(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
