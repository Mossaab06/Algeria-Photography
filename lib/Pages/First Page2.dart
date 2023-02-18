import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photography/Page1%20Widgets/Places%20Card.dart';
import 'package:photography/Page1%20Widgets/Shading.dart';

import '../Controllers/controller.dart';
import '../Page1 Widgets/TextLayout.dart';
import 'Gallery Model.dart';

class FirstPage2 extends StatelessWidget {
  FirstPage2({Key? key}) : super(key: key);
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
    var size = MediaQuery.of(context).size;
    var controller = Get.put(HomeController());
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.black26,
      ),
      child: Stack(
          children: [
            Opacity(
            opacity: 0.9,
            child: Container(
              decoration: BoxDecoration(
              //  image: DecorationImage(image: AssetImage( 'assets/General/cool decoration2.png'),fit: BoxFit.cover),
              //  image: DecorationImage(image: AssetImage( 'assets/General/cool decoration.png'),fit: BoxFit.cover),
                image: DecorationImage(image: AssetImage( 'assets/General/IMG_20220303_214804 - Copy.jpg'),fit: BoxFit.cover),
              ),
            ),
          ),
            Align(
                alignment: Alignment(-0.1, -0.9),
                child: Text('A',style: GoogleFonts.amiriQuran(fontSize: 125,fontWeight: FontWeight.w900,color: Colors.white),)),

             ]),
    );
  }
}


class _Clipper extends CustomClipper<Rect>{
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(size.width/1.5, 0.0, size.width, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) => true;

}

class PathClipper1 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width*0.85,0);
    path.lineTo(size.width*0.85,size.height);
    path.lineTo(0,size.height);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>true;


}
class PathClipper2 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width*0.15,0);
    path.lineTo(size.width*0.15,size.height);
    path.lineTo(size.width,size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>true;


}
class PathClipper3 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width*0.78,0);
    path.lineTo(size.width*0.78,size.height);
    path.lineTo(0,size.height);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>true;


}
class PathClipper4 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width*0.75,0);
    path.lineTo(size.width*0.75,size.height);
    path.lineTo(size.width,size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>true;


}
