import 'package:flutter/material.dart';

import '../Appcolors.dart';

class IncDecTextFromFiled extends StatefulWidget {
  const IncDecTextFromFiled({
    super.key,
  });

  @override
  State<IncDecTextFromFiled> createState() => _IncDecTextFromFiledState();
}

class _IncDecTextFromFiledState extends State<IncDecTextFromFiled> {
  int currentValue=1;
  final TextEditingController controller=TextEditingController();
  @override
  void initState() {

    super.initState();
    controller.text= currentValue.toString();
  }

  void changeValue (int value){
    currentValue=value;
    controller.text=currentValue.toString();
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap:() {
            currentValue++;
            controller.text=currentValue.toString();
          },
          child: Container(

            decoration: BoxDecoration(
              color: AppColors.PrimaryColor,
              borderRadius:BorderRadius.circular(4),
            ),
            padding: EdgeInsets.all(2),
            child:Icon(
              Icons.add,
              size: 18,
              color: Colors.white,
            ) ,
          ),
        ),
        const SizedBox(width: 2,),
        Expanded(
          child: TextFormField(
            controller: controller ,
            readOnly: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide.none
                )
            ),
          ),
        ),

        const SizedBox(width: 2,),
        GestureDetector(
          onTap:() {
            if(currentValue>1){
              currentValue--;
              controller.text=currentValue.toString();
            }
          },
          child: Container(

            decoration: BoxDecoration(
              color: AppColors.PrimaryColor,
              borderRadius:BorderRadius.circular(4),
            ),
            padding: EdgeInsets.all(2),
            child:Icon(
              Icons.remove,
              size: 18,
              color: Colors.white,
            ) ,
          ),
        ),

      ],
    );
  }
}