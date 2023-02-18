import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Controllers/controller.dart';
import 'Gallery Model.dart';


class PageAlgeria extends StatelessWidget {
  PageAlgeria({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var controller = Get.put(HomeController());

    return DefaultTabController(
      animationDuration: Duration(seconds: 1),
      length: 3,
      child: Container(
        height: size.height*1,
        decoration: BoxDecoration(
            color: Colors.black26,
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  spreadRadius: 1,
                  blurRadius: 40,
                  offset: Offset(0, -50)
              )
            ]
        ) ,
        child: Row(
          children: [
            SizedBox(width: 50,),
            Container(
                height: size.height*0.85,
                width: size.width*0.32,
                //child: Image.asset('assets/IMG_20230129_163750 - Copy.jpg',fit: BoxFit.cover,)),
                child: Image.asset('assets/General/IMG_20210907_031552 - Copy.jpg',fit: BoxFit.cover,)),
            SizedBox(width: 120,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('الجزائر',style: GoogleFonts.arefRuqaa(color: Colors.red.shade900,fontSize: 40),),
                Text('Algeria',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold, fontFamily: 'Arkhip',
                ),),
                SizedBox(height: 20,),
                Container(
                  width: 500,height: 300,
                  child: Stack(
                    children:[
                      TabBarView(
                       // controller: controller.myController,
                      children: [
                        AboutAlgeria(),
                        MapAlgeria(),
                        InfoAlgeria(),

                      ],
                    ),
                      Align(
                          alignment: Alignment(0.9, 1),
                          child: InkWell(
                              onTap: (){
                              //  controller.myController.animateTo(0);
                              },
                              child: Icon(Icons.arrow_forward,size: 40,color: Colors.red,)))
                 ] ),
                ),
                SizedBox(height: 10,),
               // Container(height: 1,width: 500,color: Colors.red.shade400,),
                Container(
                  height: 60,width: 300,
                  child: TabBar(
                  //  controller: controller.ControllerAboutAlgeria,
                    //controller: controller.myController,
                    unselectedLabelColor: Colors.grey,
                    indicatorWeight: 3,
                    indicatorPadding: EdgeInsets.symmetric(horizontal:10,vertical: 10 ) ,
                    indicatorColor: Colors.red,
                    indicatorSize: TabBarIndicatorSize.tab ,
                    tabs: [
                      Tab(child: Text('ABOUT',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),),
                      Tab(child: Text('MAP',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),),
                      Tab(child: Text('INFO',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),),

                          ],
                        ),
                      ),

                SizedBox(height: 20,),
                    Container(
                    height: 45,width: 160, decoration: BoxDecoration(
                    color: Colors.red.shade800,
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                     // image: DecorationImage(image: ImageProvider('assets/IMG_20210504_152325~2.jpg')),
                     ),
                     child: Center(child: Text('Learn More',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),),
                ),

              ],),
            SizedBox(width: 100,),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(color: controller.Color1.value,width: 2,height: 90,),
                Container(color: controller.Color2.value,width: 2,height: 90,),
                Container(color: controller.Color3.value,width: 2,height: 90,),
                SizedBox(height: 20,),
                RotatedBox(
                    quarterTurns: 3,
                    child: Text('ABOUT',style: TextStyle(color: Colors.white,fontSize: 15),))

              ],

            )],
        ),

      ),
    );
  }
}

class AboutAlgeria extends StatelessWidget {
  const AboutAlgeria({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Algeria is a North African country with a Mediterranean coastline and a Saharan desert interior. Many empires have left legacies here,'
        ' such as the ancient Roman ruins in seaside Tipaza. In the capital, Algiers, Ottoman landmarks like circa-1612 Ketchaoua Mosque line the hillside Casbah quarter, with its narrow alleys and stairways. '
        'The city’s Neo-Byzantine basilica Notre Dame d’Afrique dates to French colonial rule.',
      style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Arkhip',
      ),);
  }
}


class MapAlgeria extends StatelessWidget {
  const MapAlgeria({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/General/algeria-on-world-map.jpg',fit: BoxFit.cover,);
  }
}


class InfoAlgeria extends StatelessWidget {
  const InfoAlgeria({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column( crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Also Known As :', style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Arkhip',),),
        SizedBox(height: 10,),
        Text('People’s Democratic Republic of Algeria',
          style: TextStyle(color: Colors.red,fontSize: 21,fontFamily: 'Arkhip',fontWeight: FontWeight.w500),),
        SizedBox(height: 15,),
        Row(
          children: [
            Text('Capital :', style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Arkhip',),),
            SizedBox(width: 20,),
            Text('Algiers', style: TextStyle(color: Colors.red,fontSize: 20,fontFamily: 'Arkhip',),),
          ],),
        SizedBox(height: 15,),
        Row(
          children: [
            Text('Population :', style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Arkhip',),),
            SizedBox(width: 20,),
            Text('45,502,000', style: TextStyle(color: Colors.red,fontSize: 20,fontFamily: 'Arkhip',),),
          ],),
        SizedBox(height: 15,),
        Row(
          children: [
            Text('Official Languages :', style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Arkhip',),),
            SizedBox(width: 20,),
            Text('Arabic', style: TextStyle(color: Colors.red,fontSize: 20,fontFamily: 'Arkhip',),),
          ],),
        SizedBox(height: 15,),
        Row(
          children: [
            Text('Official Religion :', style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Arkhip',),),
            SizedBox(width: 20,),
            Text('Islam', style: TextStyle(color: Colors.red,fontSize: 20,fontFamily: 'Arkhip',),),
          ],),
        SizedBox(height: 15,),
        Row(
          children: [
            Text('Total Area (Sq Km) :', style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Arkhip',),),
            SizedBox(width: 20,),
            Text('2,381,741', style: TextStyle(color: Colors.red,fontSize: 20,fontFamily: 'Arkhip',),),
          ],),
        SizedBox(height: 15,),
        Row(
          children: [
            Text('Monetary Unit :', style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Arkhip',),),
            SizedBox(width: 20,),
            Text('Algerian dinar (DA)', style: TextStyle(color: Colors.red,fontSize: 20,fontFamily: 'Arkhip',),),
          ],),
      ],
    );
  }
}