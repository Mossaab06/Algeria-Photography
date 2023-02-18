import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photography/HomePage.dart';
import 'dart:async';

import '../Controllers/controller.dart';

class Gallery extends StatelessWidget {
  const Gallery({Key? key, required this.DesktopPics, required this.Pics, required this.State, required this.PageNumber}) : super(key: key);
 final List DesktopPics;
 final List Pics;
 final String State;
 final int PageNumber;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var controller = Get.put(HomeController());
    print(size.width);
    return Scaffold(
      body: Container(
        //color: Colors.black,
        height: size.height,
        width: size.width,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
           children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70,),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Get.back();}
                      ,child: Icon(Icons.arrow_back_rounded,size: 30,color: Colors.white,)),
                  Container(
                      //color: Colors.white,
                    height: 140,
                    width: size.width*0.25,
                    child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child:Center(child:  Text(State,style: TextStyle(fontFamily: 'Arkhip',color: Colors.white,fontWeight: FontWeight.w900  ),)))),
                  InkWell(
                    onTap: (){
                      Get.to(()=>HomePage());
                   //     controller.pageController.animateToPage(page, duration: duration, curve: curve)));
                          }
                    ,child:Icon(Icons.home,size: 30,color: Colors.white,)),

                ],
              ),
            ),
            Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40),
                  child:  ListView.builder(
                    physics: ScrollPhysics(),
                     shrinkWrap: true,
                     itemCount: 3,
                     itemBuilder: (context,index,){
                    return Wrap(
                         children: [
                              Container(
                               margin: EdgeInsets.only(right: 10,bottom: 10),
                             //  height: 400,
                                  height: size.width*0.3125,
                                  width: size.width*0.55468,

                               child: Image.asset(DesktopPics[controller.IndexDesktop[index][0]],fit: BoxFit.cover,)
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10,bottom: 10),
                               // height: 400,
                                width: size.width*0.1796,
                                height: size.width*0.3125,
                                child: Image.asset(Pics[controller.IndexPic[index][0]],fit: BoxFit.cover,),
                               ),
                              Container(
                                margin: EdgeInsets.only(right: 10,bottom: 10),
                               // height: 400,
                               // width:230,
                                height: size.width*0.3125,
                                width: size.width*0.1796,

                                child: Image.asset(Pics[controller.IndexPic[index][1]],fit: BoxFit.cover,),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10,bottom: 10),
                               // height: 400,
                                //width: 230,
                                height: size.width*0.3125,
                                width: size.width*0.1796,

                                child: Image.asset(Pics[controller.IndexPic[index][2]],fit: BoxFit.cover,),),
                              Container(
                                margin: EdgeInsets.only(right: 10,bottom: 10),
                               // height: 400,
                               // width: 230,
                                height: size.width*0.3125,
                                width: size.width*0.1796,

                                child: Image.asset(Pics[controller.IndexPic[index][3]],fit: BoxFit.cover,),),
                              Container(
                                margin: EdgeInsets.only(right: 10,bottom: 10),
                               // height: 400,
                               // width: 710,
                                height: size.width*0.3125,
                                width: size.width*0.55468,
                                child: Image.asset(DesktopPics[controller.IndexDesktop[index][1]],fit: BoxFit.cover,),
                               ),
                              Container(
                                margin: EdgeInsets.only(right: 10,bottom: 10),
                             //   height: 400,
                               // width: 230,
                                height: size.width*0.3125,
                                width: size.width*0.1796,

                                child: Image.asset(Pics[controller.IndexPic[index][4]],fit: BoxFit.cover,),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10,bottom: 10),
                               // height: 400,
                               // width: 710,
                                height: size.width*0.3125,
                                width: size.width*0.55468,
                                child: Image.asset(DesktopPics[controller.IndexDesktop[index][2]],fit: BoxFit.cover,),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10,bottom: 10),
                                //height: 400,
                                //width: 230,
                                height: size.width*0.3125,
                                width: size.width*0.1796,
                                child: Image.asset(Pics[controller.IndexPic[index][5]],fit: BoxFit.cover,),
                              ),


                    ],);
                    }
                ),
              ),

              ],
            ),
        ),),
    );

  }
}
