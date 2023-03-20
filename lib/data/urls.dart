class Urls{
  static const String baseUrl ="https://craftybay.teamrabbil.com/api";
  static const String productsliderUrl='$baseUrl/ListProductSlider';
  static const String productcatagoryUrl='$baseUrl/CategoryList';

  static  String productByRemarksUrl(String remarks)=>
      '$baseUrl/ListProductByRemark/$remarks';


}