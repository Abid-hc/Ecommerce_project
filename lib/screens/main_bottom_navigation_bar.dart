import 'package:ecommerce_project/getx/bottom_navigation_controler.dart';
import 'package:ecommerce_project/screens/catagory_screen.dart';
import 'package:ecommerce_project/screens/wish_list.dart';
import 'package:ecommerce_project/utilitys/Appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../getx/catagory_controller.dart';
import '../getx/home_controler.dart';
import 'Home_screen.dart';
import 'carts_screen.dart';

class MainBottomNavigationBar extends StatefulWidget {

  const MainBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MainBottomNavigationBar> createState() => _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  BottomNavitaionControler controler = Get.put(BottomNavitaionControler());
  HomeController homeController = Get.put(HomeController());
  CatagoryController catagoryController= Get.put(CatagoryController());
  final List<Widget> screen= const [
          HomeScreen(),
          ProductCatagoryScreen(),
          CartsScreen(),
          WishListScreen(),
  ];



  @override
  void initState() {
    super.initState();
    homeController.getProductSliderList();
    catagoryController.getCatagories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<BottomNavitaionControler>(

        builder: (_) {
          return screen[controler.setectedIndex];
        }
      ),
      bottomNavigationBar: GetBuilder<BottomNavitaionControler>(
          builder: (_) {
          return BottomNavigationBar(
            currentIndex:controler.setectedIndex ,
            selectedItemColor: AppColors.PrimaryColor,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            onTap: (index){
               controler.changeIndex(index);
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home" ),
              BottomNavigationBarItem(icon: Icon(Icons.category),label:"Category" ),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label:"Cart" ),
              BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),label:"Wish" ),
            ],
          );
        }
      ),
    );
  }
}
