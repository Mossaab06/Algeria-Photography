import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photography/Controllers/controller.dart';
import 'package:lottie/lottie.dart';
import 'package:photography/Pages/Algiers.dart';

class PlacesCards extends StatelessWidget {
   PlacesCards({Key? key, required this.MainCities,required this.MainCitiesComments}) : super(key: key);
 final List MainCities;
 final List MainCitiesComments;
  List BackGroundImage=[
    'assets/Algiers/1.jpg',
    'assets/Boumerdas/3.jpg',
    'assets/Medea/1.jpg',
    'assets/Blida/2.jpg',
    // 'assets/IMG_20210504_152325~2.jpg',
    // 'assets/IMG_20210504_153600~2.jpg',
    // 'assets/IMG_20210213_184713 - Copy.jpg',
    // 'assets/IMG_20210504_152325~2.jpg',
    // 'assets/IMG_20210504_153600~2.jpg',
    // 'assets/IMG_20210213_184713 - Copy.jpg'
     ];

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    var controller = Get.put(HomeController());
    return Container(
    // color: Colors.black,
      width: size.width*0.8,
      height: size.height*0.15,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context,index){
            controller.INDEXX.value = index;
            //print(index);
          //  print(controller.INDEXX.value);
        return InkWell(
          onTap: (){
            controller.currentPage.value=index;
            // Get.to(Page3());
            controller.pageController.animateToPage(index+2, duration: Duration(milliseconds: 500), curve:Curves.decelerate);

            },
          child: Stack(
              children:[
                Lottie.network('https://assets5.lottiefiles.com/packages/lf20_Rhzo26.json',fit: BoxFit.cover,width: 110,height: 100),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 100,width: 220,
                  decoration: BoxDecoration(
                 //  color: Colors.white,
                  ),

                 child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                    Container(

                      height: 80,width: 80,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        shape: BoxShape.circle,
                        border: Border.all(width: 3,color: Colors.black)
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(90)),
                        child: Image.asset(BackGroundImage[index],fit: BoxFit.cover,)),
                      ),
                   SizedBox(width: 10,),
                   Container(
                        height: 100,width: 120,
                    //  color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(MainCitiesComments[index],style: TextStyle(color: Colors.white,fontSize: 8,fontWeight: FontWeight.w500,  fontFamily: 'Arkhip',),),
                            Text(MainCities[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize:17,  fontFamily: 'Arkhip',),),
                          ],
                        ),
                    ),
                  ],),


            ),
          ]),
        );
      }),
    );
  }
}

//controller.MainCitiesComments[controller.INDEXX.value]