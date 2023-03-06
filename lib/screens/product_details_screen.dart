import 'package:ecommerce_project/utilitys/widgets/inc_dce_from_filed.dart';
import 'package:flutter/material.dart';
import '../utilitys/Appcolors.dart';
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    const SizedBox(width: 8,),
                    TextButton(onPressed: (){}, child: Text("Reviews",style: TextStyle(
                      color:  AppColors.PrimaryColor
                    ),)),
                    Container(
                      padding:EdgeInsets.all(6) ,
                      decoration: BoxDecoration(
                        color: AppColors.PrimaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(Icons.favorite_border,color: Colors.white,size: 14,),
                    )

                  ],
                ),
                const SizedBox(height: 16,),
                Text("Color",style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  fontSize: 16
                )
                  ,),
                const SizedBox(height: 8,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for( int i=0;i<5;i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                          radius: 16,
                          backgroundColor: AppColors.PrimaryColor,
                          child: Icon(Icons.check),
                      ),
                        )

                    ],
                  ),
                ),
                const SizedBox(height: 16,),
                Text("Size",style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                )
                  ,),
                const SizedBox(height: 8,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for( int i=0;i<5;i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54,width: 2),
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: Text("XL"),
                          ),
                        )

                    ],
                  ),
                ),
                Text("Description",style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                )
                  ,),
                const SizedBox(height: 8,),
                Text(''' 
                The world's largest athletic apparel company, Nike is best known for its footwear, apparel, and equipment. Founded in 1964 as Blue Ribbon Sports, the company became Nike in 1971 after the Greek goddess of victory.
                ''')
                
              ],
            ),
          )

        ],
      ),

    );
  }
}
