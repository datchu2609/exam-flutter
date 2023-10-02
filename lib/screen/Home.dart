import 'dart:io';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Item> items = [
    Item('Item 1', 4.5, 'assets/images/Chilwell.png'),
    Item('Item 2', 3.8, 'assets/images/Chilwell.png'),
    Item('Item 3', 4.2, 'assets/images/Chilwell.png'),
    // Thêm các mục khác ở đây
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Hi Guy!',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                'Where are you going next!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Tìm kiếm...',
                    filled: true,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        color: Colors.lightBlueAccent, // Màu nền
                        child: Icon(
                          Icons.home_work_outlined,
                          size: 48.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Hotels',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        color: Colors.lightBlueAccent, // Màu nền
                        child: Icon(
                          Icons.flight,
                          size: 48.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Flights',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        color: Colors.lightBlueAccent, // Màu nền
                        child: Icon(
                          Icons.account_balance_wallet,
                          size: 48.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'All',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Popular Destinations',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 500, // Set a specific height
              child: ListView.builder(
                itemCount: (items.length / 2).ceil(), // Calculate the number of rows needed
                itemBuilder: (context, index) {
                  final firstItemIndex = index * 2;
                  final secondItemIndex = index * 2 + 1;

                  return Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          width: 400,
                          padding: EdgeInsets.all(16.0),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(items[firstItemIndex].imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  color: Colors.black.withOpacity(0.5),
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        items[firstItemIndex].title,
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Rating: ${items[firstItemIndex].rating}',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (secondItemIndex < items.length) // Check if there's a second item
                        Expanded(
                          child: Container(
                            width: 400,
                            padding: EdgeInsets.all(16.0),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(items[secondItemIndex].imageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    color: Colors.black.withOpacity(0.5),
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          items[secondItemIndex].title,
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'Rating: ${items[secondItemIndex].rating}',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  );
                },
              ),
            )

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: "Home",
          ),
        ],
      ),
    );
  }
}

class Item {
  final String title;
  final double rating;
  final String imageUrl;

  Item(this.title, this.rating, this.imageUrl);
}
