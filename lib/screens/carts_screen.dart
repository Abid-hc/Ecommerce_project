import 'package:ecommerce_project/utilitys/widgets/AppElevatedButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../getx/bottom_navigation_controler.dart';
import '../utilitys/Appcolors.dart';
import '../utilitys/widgets/carts/carts_product_item.dart';

class CartsScreen extends StatefulWidget {
  const CartsScreen({Key? key}) : super(key: key);

  @override
  State<CartsScreen> createState() => _CartsScreenState();
}

class _CartsScreenState extends State<CartsScreen> {
  BottomNavitaionControler controler = Get.put(BottomNavitaionControler());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text("Carts",style: TextStyle(
          color: Colors.black54,
        ),),
        leading: IconButton(
          onPressed: (){
            controler.changeIndex(0);
          },
          icon: Icon(Icons.arrow_back_ios,color: Colors.black54,) ,

        ),

      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context,index) {
              return const CartProductItem();
            }),
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.PrimaryColor.withOpacity(0.20),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),

              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total price",style:TextStyle(
                      color: Colors.black54,
                      fontSize: 12
                    ) ,
                    ),
                    Text("\$12000",style:TextStyle(
                        color: AppColors.PrimaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600
                    ) ,
                    ),


                  ],
                ),

                SizedBox(
                  width: 100,
                  child: AppElevatedButton(text: "Check out", ontap: (){}),

                ),

              ],
            ),
          )
        ],
      )
    );
  }
}




