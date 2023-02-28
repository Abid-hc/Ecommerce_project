import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../Appcolors.dart';
class HomeBannerSlider extends StatelessWidget {
  HomeBannerSlider({Key? key}) : super(key: key);

  final ValueNotifier <int> CurrentSelectedIndex=ValueNotifier(0) ;
  final CarouselController _carouselController= CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
              height: 180.0,
              viewportFraction: 1,
              onPageChanged: (index,_){
                CurrentSelectedIndex.value= index;

              }
          ),
          items: [1,2,3,4,5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 1),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(8)
                    ),

                    child: Text('text $i', style: const TextStyle(fontSize: 16.0),)
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
              for(int i=0; i<5;i++)


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