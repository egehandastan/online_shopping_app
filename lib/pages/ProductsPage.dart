import 'package:ShoppingApp/pages/HomePage.dart';
import 'package:flutter/material.dart';

import 'AccountPage.dart';
import 'CartPage.dart';
import 'SuggestedProductsPage.dart';
import 'WishListPage.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<ProductsPage> {
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    HomePage(),
    SuggestedProductsPage(),
    WishListPage(),
    CartPage(),
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            backgroundColor: const Color(0xff18a898),
            icon: Icon(Icons.shop),
            label: 'Shop',
          ),
          const BottomNavigationBarItem(
            backgroundColor: const Color(0xff18a898),
            icon: Icon(Icons.add_box_outlined),
            label: 'Suggested Products',
          ),
          const BottomNavigationBarItem(
            backgroundColor: const Color(0xff18a898),
            icon: Icon(Icons.favorite_border),
            label: 'Wish List',
          ),
          const BottomNavigationBarItem(
            backgroundColor: const Color(0xff18a898),
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          const BottomNavigationBarItem(
            backgroundColor: const Color(0xff18a898),
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
