

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../utilities/message_utils.dart';

class DetailsWidget extends StatelessWidget{
  const DetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 224,),
          const Text("Macbook Air",style: TextStyle(color: Color(0XFFFFFFFF),fontFamily: "Urbanist",fontSize: 16, fontWeight: FontWeight.w600 ),),
          const SizedBox(height: 8,),
          const Text("AED 1,200",style: TextStyle(color: Color(0XFFF6A826),fontFamily: "Urbanist",fontSize: 24, fontWeight: FontWeight.w700 ),),
          const SizedBox(height: 8,),
          const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit... #Lorem #ipsum #amet",style: TextStyle(color: Color(0XFFFFFFFF),fontFamily: "Urbanist",fontSize: 13, fontWeight: FontWeight.w600 ),),
          const SizedBox(height: 8,),
          Row(
            children: [
              Utils.getIcon("dubai.png"),
              const SizedBox(width: 5,),
              const Text("Dubai, United Arab Emirates",style: TextStyle(color: Color(0XFFFFFFFF),fontFamily: "Urbanist",fontSize: 13, fontWeight: FontWeight.w600 ),),
            ],
          ),
          const SizedBox(height: 8,),
          Container(
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(8) ,
                gradient: const LinearGradient(
                  colors: [blueGradientStart, blueGradientEnd],
                ),
              ),
              child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),),child: const Text("Visit Website",style: TextStyle(color: Color(0XB3FFFFFF),fontFamily: "Urbanist",fontSize: 14, fontWeight: FontWeight.w700 ),),)),
          const SizedBox(height: 8,), ],
      ),
    );

  }

}


