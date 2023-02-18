import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Controllers/controller.dart';
import '../Pictures Model.dart';
import '../States Model.dart';
import 'Gallery Model.dart';


class Blida extends StatelessWidget {
  const Blida({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var controller = Get.put(HomeController());

    return Stack(
      children:[
        Container(
        height: size.height*1,
        decoration: BoxDecoration(
          color: Colors.black87,
          image: DecorationImage(image: AssetImage('assets/General/IMG_20230201_215031.jpg',),
            fit: BoxFit.cover,),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StatesModel(StateName:controller.StatesNames[3],StateInfo:controller.StatesInfo[3]
                ,StateAdditionalInfo:controller.StatesAdditionalInfo[3] ,),
              SizedBox(width: 30,),
              PicturesModel(Pics: controller.Blida,),
            ] ),
      ),
        Align(
          alignment: Alignment(1, 0),
          child: InkWell(
            onTap: (){
              Get.to(()=>Gallery(DesktopPics: controller.DesktopBlida, Pics: controller.Blida,State: controller.StatesNames[3],PageNumber: 9,));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black26.withOpacity(0.6),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              width: 220,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('View More',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Arkhip'),),
                    Icon(Icons.arrow_right_alt,size: 50,color: Colors.white,),
                  ],
                ),
              ),
            ),
          ),
        )
      ]
    );


  }
}
