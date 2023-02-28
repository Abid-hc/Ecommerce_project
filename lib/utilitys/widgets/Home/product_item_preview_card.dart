import 'package:flutter/material.dart';

import '../../Appcolors.dart';

class ProductItemPreviewCard extends StatelessWidget {
  const ProductItemPreviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),

      ),
      child: Column(
        children: [
          Image.asset("assets/images/nike.png",
            height: 80,width: 120,fit: BoxFit.cover,),
          const SizedBox(height: 6,),
          Text('Product Name',
            maxLines: 2,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13,
                letterSpacing: 0.4,
                color: Colors.black54,
                overflow: TextOverflow.ellipsis
            ),),
          const SizedBox(height: 8,),
          Row(
            children: [
              Text('\$100',style: TextStyle(
                  color: AppColors.PrimaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400
              ),),
              const SizedBox(width: 8,),
              Icon(Icons.star,color: Colors.amberAccent,size: 14,),
              Text('4.8',style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w600
              ),),
              const SizedBox(width: 8,),
              GestureDetector(
                  onTap:(){} ,
                  child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: AppColors.PrimaryColor,
                          borderRadius: BorderRadius.circular(4)
                      ),
                      child: Icon(Icons.favorite_border,size: 10,color: Colors.white,)
                  )
              ),


            ],),
          const SizedBox(height: 8,)

        ],
      ),
    );
  }
}