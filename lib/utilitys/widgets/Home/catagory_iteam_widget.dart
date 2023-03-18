import 'package:flutter/material.dart';

import '../../Appcolors.dart';

class CatagoryIteamWidget extends StatelessWidget {
  const CatagoryIteamWidget({
    super.key, required this.CatagoryIteamName, required this.image, required this.onTap,
  });
  final String CatagoryIteamName;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),

              ),
              child: Image.network(image,height: 35,width: 38,)
            ),

            Text(CatagoryIteamName,style: TextStyle(
              color: AppColors.PrimaryColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
            ),)

          ],
        ),
      ),
    );
  }
}