import 'package:ecommerce_project/utilitys/Appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'main_bottom_navigation_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
          builder: (context)=> MainBottomNavigationBar()),
              (route) => false);
    },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
          SvgPicture.asset("assets/images/logo.svg",width: 120,fit: BoxFit.scaleDown,),
            const Spacer(),
            CircularProgressIndicator(
              color: AppColors.PrimaryColor,
            ),
            SizedBox(height: 16,),
            Text("Version.1.0.0",style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              letterSpacing: .6
            ),),
            SizedBox(height: 32,)

          ],
        ),
      ),
    );
  }
}
