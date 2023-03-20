import 'package:ecommerce_project/data/model/catagory_model.dart';
import 'package:ecommerce_project/data/network_uitils.dart';
import 'package:ecommerce_project/data/urls.dart';
import 'package:get/get.dart';

class CatagoryController extends GetxController{
  CatagoryModel catagoryModel=CatagoryModel();
  bool getCatagoryInProgress=false;


  Future<bool> getCatagories()async{
    getCatagoryInProgress=true;
    update();
    final response = await NetworkUtils().getMethod(Urls.productcatagoryUrl);
    getCatagoryInProgress=false;
    if (response !=null){
      catagoryModel=CatagoryModel.fromJson(response);
      update();
      return true;

    }
    else{
      update();
      return false;
    }

  }
}