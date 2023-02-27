import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utilitys/widgets/AppElevatedButton.dart';
import '../utilitys/widgets/AppWidgets.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
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
                Text('Completed Profile',style: TextStyle(
                    fontSize: 24,
                    color: Color(0xff4F4F4F)
                ),),
                const  SizedBox(height: 8,),
                Text('Get started with us with yours details',style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffADADAD),
                    letterSpacing: 0.5
                ),),
                const  SizedBox(height: 16,),

                AppTextFieldWidget(controller:TextEditingController(),
                  hintText: "First Name",),
                const  SizedBox(height: 8,),

                AppTextFieldWidget(controller:TextEditingController(),
                  hintText: "last Name",),
                const  SizedBox(height: 8,),

                AppTextFieldWidget(controller:TextEditingController(),
                  hintText: "Mobile",),
                const  SizedBox(height: 8,),

                AppTextFieldWidget(controller:TextEditingController(),
                  hintText: "city",),
                const  SizedBox(height: 8,),

                AppTextFieldWidget(
                  maxLines: 4,
                  controller:TextEditingController(),
                  hintText: "Shipping Address",),
                const  SizedBox(height: 8,),


                AppElevatedButton(
                  ontap: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context)=>
                            CompleteProfileScreen()
                    )
                    );
                  },
                  text: "Complete",
                ),
                const  SizedBox(height: 16,),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
