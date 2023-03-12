import 'package:ecommerce_project/data/model/product_slider_model.dart';
import 'package:ecommerce_project/data/network_uitils.dart';
import 'package:ecommerce_project/data/urls.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
 ProductSliderModel productSliderModel= ProductSliderModel();
 bool getProductSliderInprogress = false;

 Future<bool> getProductSliderList() async{
   getProductSliderInprogress= true;
   update();
   final result= await NetworkUtils().getMethod(Urls.productsliderUrl);
   getProductSliderInprogress=false;
   if (result !=null){

   productSliderModel = ProductSliderModel.fromJson(result);
   update();
   return true;
   }
   else{
     update();
     return false;
   }

 }
}