import 'package:flutter/material.dart';

import '../utilitys/widgets/AppElevatedButton.dart';
import '../utilitys/widgets/AppWidgets.dart';

class CreateReviewScreen extends StatefulWidget {
  const CreateReviewScreen({Key? key}) : super(key: key);

  @override
  State<CreateReviewScreen> createState() => _CreateReviewScreenState();
}

class _CreateReviewScreenState extends State<CreateReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black54,
        ),
        title: Text("Create Review",style: TextStyle(color: Colors.black54),),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 18,),
            AppTextFieldWidget(hintText: "First Name",controller: TextEditingController(),),
            const SizedBox(height: 8,),
            AppTextFieldWidget(controller: TextEditingController(), hintText: "Last Name"),
            const SizedBox(height: 8,),
            AppTextFieldWidget(controller: TextEditingController(), hintText: "Write Review",maxLines: 6,),
            const SizedBox(height: 8,),
            AppElevatedButton(text: "Submite", ontap: (){})
          ],
        ),
      ),

    );
  }
}
