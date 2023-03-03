import 'package:flutter/material.dart';
import '../utilitys/widgets/product_details/product_details_slider.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text("product Details",style: TextStyle(color: Colors.black54),),
        leading: BackButton(
          color: Colors.black54,
        )
      ),
      body: Column(
        children: [
          ProductImageSlider(),
          Row(
            children: [

            ],
          )

        ],
      ),

    );
  }
}
