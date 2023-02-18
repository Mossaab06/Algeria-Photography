import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controllers/controller.dart';

class PicturesModel extends StatelessWidget {
  const PicturesModel({Key? key, required this.Pics}) : super(key: key);
 final List Pics;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var controller = Get.put(HomeController());

    return Align(
        alignment: Alignment(1, 0),
        child: Container(
          width: size.width*0.65,
          height: size.height*0.8,
          decoration: BoxDecoration(
            //color: Colors.black26.withOpacity(0.7),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 100,
                spreadRadius: 20,
              )
            ]
          ),

          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: Pics.length,
              itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.only(right: 15),
                  width:size.width*0.25,
                  height: 200,
                  //  color: Colors.green,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      child: Image.asset(Pics[index],fit: BoxFit.cover,)),


                );
              }),
        ));
  }
}
