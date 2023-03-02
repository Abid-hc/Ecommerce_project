import 'package:ecommerce_project/utilitys/widgets/inc_dce_from_filed.dart';
import 'package:flutter/material.dart';

import '../../Appcolors.dart';


class CartProductItem extends StatelessWidget {
  const CartProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
      elevation: 2,
      child: Row(
        children: [
          const SizedBox(width: 8,),
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
                      IconButton(onPressed: (){}, icon:const Icon(Icons.delete_outline,color: Colors.red,)),

                    ],
                  ),
                  const SizedBox(height: 6,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$100",style: TextStyle(
                          color: AppColors.PrimaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w600
                      ),),


                      SizedBox(
                          width: 95,
                          height: 30,

                          child: IncDecTextFromFiled(
                          )
                      )


                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}