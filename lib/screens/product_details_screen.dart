import 'package:ecommerce_project/utilitys/widgets/inc_dce_from_filed.dart';
import 'package:flutter/material.dart';
import '../utilitys/widgets/product_details/product_details_slider.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text("product Details",style: TextStyle(color: Colors.black54),),
        leading: BackButton(
          color: Colors.black54,
        )
      ),
      body: Column(
        children: [
          ProductImageSlider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(
                        child: Text( "Nike Sports shoes A4517",
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 18,fontWeight:FontWeight.w600 ,color: Colors.black),
                        )
                    ),
                    SizedBox(
                      width: 90,
                        child: IncDecTextFromFiled()
                    ),

                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.amberAccent,),
                    Text("4.5"),
                    TextButton(onPressed: (){}, child: Text("Reviews"))

                  ],
                )
              ],
            ),
          )

        ],
      ),

    );
  }
}
