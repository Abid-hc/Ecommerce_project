import 'package:ecommerce_project/utilitys/Appcolors.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key, required this.text, required this.ontap,
  });
  final String text;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.PrimaryColor,
              padding: EdgeInsets.all(14),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              )
          ),
          onPressed: ontap, child: Text(text)),
    );
  }
}