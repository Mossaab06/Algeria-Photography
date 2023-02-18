import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photography/Controllers/controller.dart';

import 'Pages/About Algeria.dart';
import 'Pages/Blida.dart';
import 'Pages/Boumerdas.dart';
import 'Pages/First Page2.dart';
import 'Pages/Fist Page.dart';
import 'Pages/Gallery Model.dart';
import 'Pages/Medea.dart';
import 'Pages/Page1.dart';
import 'Pages/Algiers.dart';
int InitialPage=0;
class HomePage extends StatelessWidget {
   HomePage({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var controller = Get.put(HomeController());
   // controller.pageController.animateToPage(AnimateTo, duration: Duration(seconds: 2), curve: Curves.decelerate);
    return Scaffold(
      backgroundColor: Colors.black87,
      body:
        PageView(
          scrollDirection: Axis.vertical,
          controller: controller.pageController,
          children: [
            //FirstPage2(),
            //FirstPage(),
            Page1(),
            PageAlgeria(),
            Algiers(),
            Boumerdas(),
            Medea(),
            Blida(),
           // Gallery(),
        ],),


    );
  }
}






