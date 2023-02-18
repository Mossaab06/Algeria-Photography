import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photography/Page1%20Widgets/Places%20Card.dart';
import 'package:photography/Page1%20Widgets/Shading.dart';

import '../Controllers/controller.dart';
import '../Page1 Widgets/TextLayout.dart';
import 'Gallery Model.dart';

class Page1 extends StatelessWidget {
   Page1({Key? key}) : super(key: key);
  List BackGroundImage=[
    'assets/General/IMG_20210504_152325~2.jpg',
    'assets/General/IMG_20210504_153600~2.jpg',
   'assets/General/IMG_20210213_184713 - Copy.jpg'
       'assets/General/IMG_20210504_152325~2.jpg',

  ];
   List Cities=["ALGERIA","BOUMERDES","MEDEA"];
   List CitiesArab=["الجزائر","بومرداس","المدية"];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    var controller = Get.put(HomeController());
    return Container(
      // color: Colors.white,
      height: size.height,
      width: size.width,
      child: Stack(children: [
        // BACKGROUD IMAGE
        Opacity(
          opacity: 0.8,
          child: Container(
             //color: Colors.white,
              height: size.height,
              width: size.width,
              child: Image.asset(BackGroundImage[0], fit: BoxFit.cover,)
          ),
        ),
        // Shading(),
        Align(
          alignment: Alignment(0, 1),
          child: Container(
            height: 150,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 100,
                      spreadRadius: 0,
                      color: Colors.black.withOpacity(0.7),
                      blurStyle: BlurStyle.outer
                  )
                ]
            ),
          ),
        ),
        //Flag
        Align(
            alignment: Alignment(0, -0.7),
            child: Container(
                height: 500, width: 450,
                child: Opacity(
                    opacity: 0.9,
                   child: Image.asset('assets/General/360_F_478517273_pFWQssAUXNaL69RBH996fzl0HoXIdKQt-removebg-preview.png')))),
                    //child: Image.asset('assets/General/algeria-flag-brushstroke-publicdomain-removebg-preview.png')))),
        //Explore
        Align(
            alignment: Alignment(0, 0.4),
            child: InkWell(
              onTap: () {
                Get.to(
                        curve: Curves.easeInOutQuart,
                        duration: Duration(milliseconds: 1000),
                        () =>

                      Gallery(DesktopPics: controller.DesktopBoumerdas,
                      Pics: controller.Boumerdas,
                      State: controller.StatesNames[1],
                      PageNumber: 0,));
              },
              child: Container(
                height: 45, width: 170,
                decoration: BoxDecoration(
                  color: Colors.red.shade600,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  // image: DecorationImage(image: ImageProvider('assets/IMG_20210504_152325~2.jpg')),
                ),
                child: Center(child: Text('EXPLORE', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),),),
              ),)

        ),
        //Text
        TextLayout(Cities: Cities[0], CitiesArab: CitiesArab[0],),
        // Places
        Align(
            alignment: Alignment(0, 0.9),
            child: PlacesCards(
              MainCities: controller.MainCities,
              MainCitiesComments: controller.MainCitiesComments,
            )),
        Align(
          alignment: Alignment(0, 1.05),
          child: Container(
            height: 50, width: size.width,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 15,

                  )
                ]
            ),
          ),
        ),

        // Align(
        //   alignment: Alignment(0, -1),
        //   child: Container(
        //     width: size.width*0.95,
        //     height: 70,
        //    // color: Colors.deepPurple,
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //       Row(
        //         children: [
        //           Text('M',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.w700,  fontFamily: 'Arkhip'),),
        //           SizedBox(width: 20,),
        //           Text('HOMETALES OF ALGERIA',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w700,  fontFamily: 'Arkhip'),),
        //           SizedBox(width: 20,),
        //           Text('DESTNATIONS',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w700,  fontFamily: 'Arkhip'),),
        //           SizedBox(width: 20,),
        //           Text('EXPERIENCES',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w700,  fontFamily: 'Arkhip'),),
        //           SizedBox(width: 30,),
        //           Container(
        //             height: 35,
        //             width: 200,
        //             decoration: BoxDecoration(
        //               border: Border.all(width: 1,color: Colors.white),
        //               borderRadius: BorderRadius.all(Radius.circular(15))
        //             ),
        //           ),
        //         ],
        //       ),
        //
        //       /////////////////
        //       Row(
        //         children: [
        //           Icon(Icons.wb_twilight,color: Colors.white,size: 25,),
        //           SizedBox(width: 15,),
        //           Icon(Icons.yard_outlined,color: Colors.white,size: 25,),
        //           SizedBox(width: 15,),
        //           Icon(Icons.facebook,color: Colors.white,size: 25,),
        //           SizedBox(width: 15,),
        //           Icon(Icons.install_desktop_outlined,color: Colors.white,size: 25,),
        //           SizedBox(width: 30,),
        //           Container(
        //             height: 40,
        //             width: 150,
        //             decoration: BoxDecoration(
        //                 color: Colors.red.shade900,
        //                 borderRadius: BorderRadius.all(Radius.circular(25))
        //             ),
        //           ),
        //         ],
        //       ),
        //       //////
        //
        //
        //     ],),
        //   ),
        // )


      ]),
    );
  }
}
