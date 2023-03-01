import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

import '../getx/bottom_navigation_controler.dart';

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
          Card(
            margin: const EdgeInsets.all(16),
            elevation: 2,
            child: Row(
              children: [
                Image.asset("assets/images/nike.png",width: 90,height:70 ,fit: BoxFit.cover,),
                Expanded(
                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text("Product Name",style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  letterSpacing: 0.4,

                                ),),
                                Row(
                                  children: [
                                    Text("Color:Black",style: TextStyle(
                                      fontSize: 13,
                                    ),),
                                    const SizedBox(width: 12,),
                                    Text("Size:XL",style: TextStyle(
                                      fontSize: 13,
                                    ),),
                                  ],
                                ),


                              ],

                            ),
                            Spacer(),
                            IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline,color: Colors.red,))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\$100"),

                            SizedBox(
                              width: 90,
                              height: 30,

                              child:NumberInputWithIncrementDecrement(
                                controller: TextEditingController(),
                                buttonArrangement: ButtonArrangement.incLeftDecRight,
                                incIcon: Icons.add,
                                decIcon:Icons.remove ,
                                min: 0,
                                max: 3,
                              ),
                            )


                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
