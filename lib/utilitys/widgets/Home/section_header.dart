import 'package:flutter/material.dart';
import '../../Appcolors.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key, required this.HeaderName, required this.onTapSeeAll,
  });
  final String HeaderName ;
  final VoidCallback onTapSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(HeaderName,style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.6,

        ),),
        TextButton(onPressed: onTapSeeAll, child: Text('See all',style: TextStyle(
            color: AppColors.PrimaryColor
        ),))
      ],
    );
  }
}