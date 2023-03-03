import 'package:ecommerce_project/getx/bottom_navigation_controler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utilitys/widgets/Home/product_item_preview_card.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  BottomNavitaionControler contoler=Get.put(BottomNavitaionControler());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text("Wishlist",style: TextStyle(
          color: Colors.black54,

        ),),
        leading: IconButton(
          onPressed: (){
            contoler.changeIndex(0);
          },
          icon: Icon(Icons.arrow_back_ios,color: Colors.black54,),
        ),
      ),
      body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 7/8,
      ),
          itemCount: 12,
          itemBuilder: (context,index){
           return const ProductItemPreviewCard();

          }),

    );
  }
}
