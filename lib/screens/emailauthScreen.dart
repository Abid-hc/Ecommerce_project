import 'package:ecommerce_project/screens/verify_otp_screen.dart';
import 'package:ecommerce_project/utilitys/widgets/AppElevatedButton.dart';
import 'package:ecommerce_project/utilitys/widgets/AppWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class EmailAuthScreen extends StatefulWidget {
  const EmailAuthScreen({Key? key}) : super(key: key);

  @override
  State<EmailAuthScreen> createState() => _EmailAuthScreenState();
}

class _EmailAuthScreenState extends State<EmailAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
            child: Column(
              children: [
                const  SizedBox(height: 46,),
                SvgPicture.asset("assets/images/logo.svg",width: 120,fit: BoxFit.scaleDown,),
               const  SizedBox(height: 16,),
                Text('Welcome Back',style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff4F4F4F)
                ),),
                const  SizedBox(height: 8,),
                Text('Please Enter Your Email Address',style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffADADAD),
                  letterSpacing: 0.5
                ),),
                const  SizedBox(height: 16,),
                AppTextFieldWidget(controller:TextEditingController(),
                hintText: "Email Adress",),
                const  SizedBox(height: 8,),

                AppElevatedButton(
                  ontap: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context)=>
                            VerifyOtpScreen()
                    )
                    );
                  },
                  text: "Next",
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}




