import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:photography/HomePage.dart';

import 'Controllers/controller.dart';


class StatesModel extends StatelessWidget {
  const StatesModel({Key? key, required this.StateName, required this.StateInfo, required this.StateAdditionalInfo}) : super(key: key);
  final String StateName;
  final String StateInfo;
  final String StateAdditionalInfo;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var controller = Get.put(HomeController());
    return Container(
      width: size.width*0.3,
      height: size.height*0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        //color: Colors.deepPurple.withOpacity(0.6),
        color: Colors.black.withOpacity(0.8),

      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(StateName,style: TextStyle(fontSize: 35,fontWeight: FontWeight.w900,color: Colors.white,fontFamily: 'Arkhip',),),
            SizedBox(height: 20,),
           Text(StateInfo,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.white),),
            SizedBox(height: 20,),
            Visibility(
                visible: controller.MoreInfoVisible.value,
                child: Text(StateAdditionalInfo,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),)),
        ],),
      ),
    );
  }
}
