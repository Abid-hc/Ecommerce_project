import 'package:ecommerce_project/getx/catagory_controller.dart';
import 'package:ecommerce_project/getx/home_controler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../utilitys/widgets/Home/catagory_iteam_widget.dart';
import '../utilitys/widgets/Home/home_banner_slider.dart';
import '../utilitys/widgets/Home/product_item_preview_card.dart';
import '../utilitys/widgets/Home/section_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: SvgPicture.asset('assets/images/logo_nav.svg'),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade300,
            radius: 16,
            child: Icon(Icons.person,
              size: 18,
              color: Colors.grey.shade700,),
          ),
          const SizedBox(width: 8,),
          CircleAvatar(
            radius: 16,
            backgroundColor: Colors.grey.shade300,
            child: Icon(Icons.call,
              size: 18,
              color: Colors.grey.shade700,),
          ),
          const SizedBox(width: 8,),
          GestureDetector(
            onTap: (){},
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Colors.grey.shade300,
              child: Icon(Icons.notifications,
                size: 18,
                color: Colors.grey.shade700,),
            ),
          ),
          const SizedBox(width: 8,),

        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
             const TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                  prefixIcon: Icon(Icons.search,),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey
                    )
                  )

                )
              ),
             const SizedBox(height: 16,),

             GetBuilder<HomeController>(
               builder: (controller) {
                 if(controller.getProductSliderInprogress){
                   return CircularProgressIndicator();
                 }
                 else{
                   return HomeBannerSlider(
                     productSliderModel: controller.productSliderModel,
                   );
                 }

               }
             ),

              SectionHeader(
                HeaderName: "Catagories",
                onTapSeeAll: (){},
              ),
              GetBuilder<CatagoryController>(
                builder: (controller) {
                  if (controller.getCatagoryInProgress){
                  return Center(
                    child: CircularProgressIndicator(),
                  );}
                  else{
                    return SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.catagoryModel.data?.length??0 ,
                        itemBuilder: (context,index){
                          return CatagoryIteamWidget(
                            CatagoryIteamName: controller.catagoryModel.data![index]?.categoryName??"",
                            onTap: (){},
                            image:controller.catagoryModel.data![index]?.categoryImg??"" ,
                          );

                        }
                      ),
                    );

                  }
                }
              ),


              const SizedBox(height: 16,),
              SectionHeader(HeaderName: "Popular", onTapSeeAll: (){}),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                  ],
                ),
              ),

              const SizedBox(height: 16,),
              SectionHeader(HeaderName: "Special", onTapSeeAll: (){}),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                  ],
                ),
              ),

              const SizedBox(height: 16,),
              SectionHeader(HeaderName: "New", onTapSeeAll: (){}),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                  ],
                ),
              ),



            ],
          ),
        ),
      ),

    );
  }
}







