import 'package:get/get.dart';

class BottomNavitaionControler extends GetxController{
  int setectedIndex=0;
  void changeIndex(int index){
    setectedIndex=index;
    update();

  }
}