import 'package:flutter/material.dart';

import '../utilitys/Appcolors.dart';
import 'create_review_screen.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text("Review",style: TextStyle(color: Colors.black54),),
        leading: BackButton(color: Colors.black54,),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context,index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade300,
                                radius: 16,
                                child: Icon(Icons.person,
                                  color: Colors.grey.shade700,
                                  size: 18,
                                ),
                              ),
                              const SizedBox(width: 3,),
                              Text("Abid Hasan Chowdhury",style: TextStyle(color: Colors.black),)
                            ],
                          ),
                          const SizedBox(height: 4,),
                          Text('''Not sure why i can’t give it 1/2 star or 0 stars. But the commercials are the epitome of racism. They push 1 sided ideas to groom children into liberal obedient adults. I used to watch nick as a kid but now a days it’s a disgusting propaganda network….I feel like we live in Russia, or even worse, china ''',
                            style: TextStyle(color: Colors.black54),)
                        ],
                      ),
                    ),
                  );

            }
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            decoration: BoxDecoration(
                color: AppColors.PrimaryColor.withOpacity(0.20),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),

                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Reviews",style:TextStyle(
                        color: Colors.black,
                        fontSize: 15
                    ) ,
                    ),
                    SizedBox(width: 3,),
                    Text("(100)",style:TextStyle(
                        color: Colors.black,
                        fontSize: 15,

                    ) ,
                    ),


                  ],
                ),

                SizedBox(
                  width: 120,
                  child: CircleAvatar(
                    backgroundColor: AppColors.PrimaryColor,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>CreateReviewScreen()));
                      },
                      child: Icon(Icons.add,color: Colors.white,),
                    ),
                  ),

                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
