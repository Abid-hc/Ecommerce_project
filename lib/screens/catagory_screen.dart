import 'package:ecommerce_project/utilitys/widgets/Home/catagory_iteam_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../getx/bottom_navigation_controler.dart';
import '../getx/catagory_controller.dart';

class ProductCatagoryScreen extends StatefulWidget {
  const ProductCatagoryScreen({Key? key}) : super(key: key);

  @override
  State<ProductCatagoryScreen> createState() => _ProductCatagoryScreenState();
}

class _ProductCatagoryScreenState extends State<ProductCatagoryScreen> {

  BottomNavitaionControler controler = Get.put(BottomNavitaionControler());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text("Catagories",style: TextStyle(color: Colors.black54),),
        leading: IconButton(
          onPressed: (){
            controler.changeIndex(0);

          },
          icon:Icon(Icons.arrow_back_ios,color: Colors.black54,) ,
        ),
      ),
      body: GetBuilder<CatagoryController>(
          builder: (controller) {
            if(controller.getCatagoryInProgress){
              return Center(
                child: CircularProgressIndicator(),
              );
            }

          return RefreshIndicator(
            onRefresh: ()async{
              controller.getCatagories();
            },
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                itemCount: controller.catagoryModel.data?.length??0,
                itemBuilder: (context,index){
                  return CatagoryIteamWidget(
                    CatagoryIteamName: controller.catagoryModel.data![index].categoryName??"",
                    image: controller.catagoryModel.data![index].categoryImg??"",
                    onTap: (){},
                  );
                },
                ),
          );
        }
      ),
    );
  }
}
