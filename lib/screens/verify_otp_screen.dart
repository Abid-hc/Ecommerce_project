import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../utilitys/Appcolors.dart';
import '../utilitys/widgets/AppElevatedButton.dart';
import 'complete_profile_screen.dart';


class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({Key? key}) : super(key: key);

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
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
                Text('Enter Otp Code',style: TextStyle(
                    fontSize: 24,
                    color: Color(0xff4F4F4F)
                ),),
                const  SizedBox(height: 8,),
                Text('A 4 digit number send your email address',style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffADADAD),
                    letterSpacing: 0.5
                ),),
                const  SizedBox(height: 16,),
                PinCodeTextField(
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    selectedColor: AppColors.PrimaryColor

                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,

                  onCompleted: (v) {

                  },
                  onChanged: (value) {


                  },
                   appContext: context,
                ),




                const  SizedBox(height: 16,),



                AppElevatedButton(
                  ontap: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context)=>
                        CompleteProfileScreen()
                    )
                    );
                  },
                  text: "Next",
                ),
                const  SizedBox(height: 16,),
                RichText(text: TextSpan(
                  text: "This code will expire in",
                  style: TextStyle(
                    color: Colors.grey
                  ),
                  children: [
                    TextSpan(
                      text: "120s",style: TextStyle(
                      color: AppColors.PrimaryColor
                    )
                    )
                  ]
                )),
                const  SizedBox(height: 16,),
                TextButton(onPressed: (){}, child: const Text('Resend code'))


              ],
            ),
          ),
        ),
      ),
    );


  }
}


