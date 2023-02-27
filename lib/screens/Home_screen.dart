import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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

    );
  }
}
