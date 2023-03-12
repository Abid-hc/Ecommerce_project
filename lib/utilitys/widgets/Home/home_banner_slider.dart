import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_project/data/model/product_slider_model.dart';
import 'package:flutter/material.dart';

import '../../Appcolors.dart';
class HomeBannerSlider extends StatelessWidget {
  HomeBannerSlider({Key? key, required this.productSliderModel}) : super(key: key);

  final ValueNotifier <int> CurrentSelectedIndex=ValueNotifier(0) ;
  final CarouselController _carouselController= CarouselController();
  final ProductSliderModel productSliderModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
              height: 180.0,
              viewportFraction: 1,
              autoPlay: true,
              
              onPageChanged: (index,_){
                CurrentSelectedIndex.value= index;

              }
          ),
          items:productSliderModel.data?.map((slider) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 1),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: NetworkImage(slider.image??'')
                      )
                    ),

                );
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 4,),
        ValueListenableBuilder(valueListenable: CurrentSelectedIndex, builder: (context,updatedvalue,_){
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for(int i=0; i<(productSliderModel.data?.length?? 0);i++)


                Container(
                  margin: EdgeInsets.all(3),
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      color: i== CurrentSelectedIndex.value? AppColors.PrimaryColor: null,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: i== CurrentSelectedIndex.value? AppColors.PrimaryColor: Colors.grey)
                  ),
                )

            ],
          );
        },
        ),
      ],
    );
  }
}