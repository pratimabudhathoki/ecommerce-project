import 'package:flutter/material.dart';
import 'package:prroduct_api_flutter/screen/cart.dart';
import 'package:prroduct_api_flutter/screen/home.dart';
import 'package:prroduct_api_flutter/screen/newprofilepage.dart';
import 'package:prroduct_api_flutter/screen/newuiprofile.dart';
import 'package:prroduct_api_flutter/screen/product_detail.dart';
import 'package:prroduct_api_flutter/screen/profile.dart';
import 'package:prroduct_api_flutter/screen/searchpage.dart';
import 'list_images.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _GridViewState();
}

class _GridViewState extends State<LandingPage> {
  int bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomNavIndex == 0
          ? HomePage()
          : bottomNavIndex == 1
              ? SearchPage()
              : bottomNavIndex == 2
                  ? CartData()
                  : NewUiProfile(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        selectedItemColor: Colors.red,
        currentIndex: bottomNavIndex,
        onTap: (index) {
          setState(() {
            bottomNavIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
