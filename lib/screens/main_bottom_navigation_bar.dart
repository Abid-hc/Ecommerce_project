import 'package:ecommerce_project/utilitys/Appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home_screen.dart';

class MainBottomNavigationBar extends StatefulWidget {
  const MainBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MainBottomNavigationBar> createState() => _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  int selectedIndex=0;
  final List<Widget> screen= const [
          HomeScreen(),
        HomeScreen(),
        HomeScreen(),
        HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: AppColors.PrimaryColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (index){
          selectedIndex=index;
          setState(() {

          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home" ),
          BottomNavigationBarItem(icon: Icon(Icons.category),label:"Category" ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label:"Cart" ),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),label:"Wish" ),
        ],
      ),
    );
  }
}
