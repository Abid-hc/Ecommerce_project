import 'package:flutter/material.dart';

import '../../Appcolors.dart';

class CatagoryIteamWidget extends StatelessWidget {
  const CatagoryIteamWidget({
    super.key, required this.CatagoryIteamName, required this.icon, required this.onTap,
  });
  final String CatagoryIteamName;
  final IconData icon;
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
                  color: AppColors.PrimaryColor.withOpacity(0.15)

              ),
              child: Icon(
                icon,
                size:32,
                color: AppColors.PrimaryColor,),
            ),
            const SizedBox(height: 6,),
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