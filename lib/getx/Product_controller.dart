import 'package:get/get.dart';
import '../data/model/product_model.dart';
import '../data/network_uitils.dart';
import '../data/urls.dart';


enum ProductRemarks{
  popular,
  special,
  New
}

class ProductController extends GetxController{
  ProductModel popularProductModel=ProductModel();
  ProductModel specialProductModel=ProductModel();
  ProductModel newProductModel=ProductModel();

  bool popularInProgress=false;
  bool specialInProgress=false;
  bool newInProgress=false;

  Future<bool> getProductsByRemarks(ProductRemarks productRemarks) async {


    if(productRemarks== ProductRemarks.New){
      newInProgress=true;
    }
    else if(productRemarks==ProductRemarks.popular){
      popularInProgress=true;
    }
    else if(productRemarks==ProductRemarks.special){
      specialInProgress=true;
    }
    update();
    final respons= await NetworkUtils().getMethod(
        Urls.productByRemarksUrl(productRemarks.name.toLowerCase()));

    if(productRemarks== ProductRemarks.New){
      newInProgress=false;
    }
    else if(productRemarks==ProductRemarks.popular){
      popularInProgress=false;
    }
    else if(productRemarks==ProductRemarks.special){
      specialInProgress=false;
    }
    update();

    if(respons !=null && respons['status']== 'success'){
      if(productRemarks== ProductRemarks.New){
        newProductModel= ProductModel.fromJson(respons);
      }
      else if(productRemarks==ProductRemarks.popular){
        popularProductModel=ProductModel.fromJson(respons);
      }
      else if(productRemarks==ProductRemarks.special){
        specialProductModel=ProductModel.fromJson(respons);
      }
      update();
      return true;


    }
    else{
      return false;
    }



  }
}