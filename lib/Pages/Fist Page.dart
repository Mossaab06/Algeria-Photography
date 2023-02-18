import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photography/Page1%20Widgets/Places%20Card.dart';
import 'package:photography/Page1%20Widgets/Shading.dart';

import '../Controllers/controller.dart';
import '../Page1 Widgets/TextLayout.dart';
import 'Gallery Model.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);
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
       //  image: DecorationImage(image: AssetImage( 'assets/General/EI3jotVW4AAKhW_.jpg'),fit: BoxFit.cover),
        color: Colors.black26,
      ),
      child: Stack(
          //  fit: StackFit.expand,
         // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Align(
              alignment: Alignment(-0.02, -0.7),
              child: Text( '18',style: GoogleFonts.workSans(color: Colors.purple.shade900,fontSize: 130,fontWeight: FontWeight.w600),
              ),
            ),
            Align(
              alignment: Alignment(0.42, 0.34),
              child: Text( '19',style: GoogleFonts.workSans(color: Colors.purple.shade900,fontSize: 130,fontWeight: FontWeight.w600),
              ),
            ),
            Align(
              alignment: Alignment(-0.89, 0.8),
              child: Container(
                width: 200,
                child: Text( 'Infrared Hidden Places',style: GoogleFonts.workSans(color: Colors.purple.shade900,fontSize: 45,fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.89, -0.8),
              child: Container(
                width: 200,
                child: Text( 'R',style: GoogleFonts.workSans(color: Colors.orange.shade900,fontSize: 45,fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Align(
              alignment: Alignment(1.2, 0.8),
              child: Container(
                width: 200,
                child: Text( 'W',style: GoogleFonts.workSans(color: Colors.orange.shade900,fontSize: 45,fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Align(
              alignment: Alignment(1.2, -0.8),
              child: Container(
                width: 200,
                child: Text( 'O',style: GoogleFonts.workSans(color: Colors.purple.shade900,fontSize: 45,fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.046, 0),
              child: Container(
                color: Colors.black,
                width: 2,
                height: size.height*0.9,
              ),
            ),
            Align(
              alignment: Alignment(0.44, 0),
              child: Container(
                color: Colors.black,
                width: 2,
                height: size.height*0.9,
              ),
            ),


            // Circels
            Container(
              margin: EdgeInsets.only(bottom: 0),
              child: Align(
                alignment: Alignment(-0.253, 3),
                child: ClipPath(
                  clipper: PathClipper1(),
                  child: ClipPath(
                    clipper: PathClipper2(),
                    child: Container(
                      width: 400,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.purple,
                        image:DecorationImage(image: AssetImage('assets/Boumerdas/1.jpg'))
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 220),
              child: Align(
                alignment: Alignment(0.386, 0),
                child: ClipPath(
                  clipper: PathClipper2(),
                  child: ClipPath(
                    clipper: PathClipper3(),
                    child: Container(
                      alignment: Alignment(0, 0),
                      width: 400,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                          image:DecorationImage(image: AssetImage('assets/Boumerdas/4.jpg',),fit: BoxFit.cover)

                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 220),
              child: Align(
                alignment: Alignment(-0.84, 0),
                child: ClipPath(
                  clipper: PathClipper2(),
                  child: ClipPath(
                    clipper: PathClipper3(),
                    child: Container(
                      alignment: Alignment(0, 0),
                      width: 400,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                          image:DecorationImage(image: AssetImage('assets/Boumerdas/4.jpg',),fit: BoxFit.cover)

                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 200),
              child: Align(
                  alignment: Alignment(0.414, 0),
                  child: ClipPath(
                    clipper: PathClipper4(),
                    child: Container(
                      alignment: Alignment(0, 0),
                      width: 400,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.deepPurple,
                          image:DecorationImage(image: AssetImage('assets/Boumerdas/2.jpg'),fit: BoxFit.cover)


                ),
              ),
          ),
        ),
            ),

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
