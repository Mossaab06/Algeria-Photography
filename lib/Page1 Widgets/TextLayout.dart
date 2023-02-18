import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:photography/Controllers/controller.dart';


class TextLayout extends StatefulWidget {
  TextLayout({Key? key, required this.Cities, required this.CitiesArab}) : super(key: key);
 final String Cities;
 final String CitiesArab;
  @override
  State<TextLayout> createState() => _TextLayoutState();
}

class _TextLayoutState extends State<TextLayout> {
  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    var controller = Get.put(HomeController());
    return Container(
      height: size.height,
      child: Stack(children: [
        Align(
          alignment: Alignment(0, 0.2),
          child: Text(controller.CitiesArab[0],
            style: GoogleFonts.arefRuqaa(fontWeight: FontWeight.w700,
              fontSize: 55,
              //color:Colors.white,
             // fontFamily: 'Arkhip',
              letterSpacing: 0,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth =6
                ..color = Colors.black.withOpacity(0.9),
              // ..color = Colors.black.withOpacity(0.9),
            ),
          ),
        ),
        Align(
            alignment: Alignment(0, 0.2),
            child:  Text(controller.CitiesArab[0], style: GoogleFonts.arefRuqaa(fontWeight: FontWeight.w700,
                 // color: Colors.white,
                letterSpacing: 0,
                foreground: Paint()..shader = LinearGradient(
                    colors: <Color>[
                      // Colors.white,
                      // Colors.green,
                      //add more color here.
                      Colors.white.withOpacity(1),
                      Colors.white.withOpacity(1),

                    ],
                  ).createShader(Rect.fromLTWH(635.0, 0.0,1.0, 10.0)),
                  fontSize: 55),),
            ),
























        Align(
          alignment: Alignment(0, -0.8),
          child: Container(
            decoration: BoxDecoration(),
            height: 70,
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Text(controller.Cities[0],
                style: TextStyle(fontWeight: FontWeight.w700,
                  //color:Colors.white,
                  fontFamily: 'Arkhip',
                  letterSpacing: 10,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth =4
                    ..color = Colors.black.withOpacity(0.9),
                  // ..color = Colors.black.withOpacity(0.9),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, -0.8),
          child: Container(
            height: 70,
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Text(controller.Cities[0],
                style: TextStyle(fontWeight: FontWeight.w700,
                    fontFamily: 'Arkhip',
                    // color:Colors.black,
                    letterSpacing: 10,
                    foreground: Paint()..shader = LinearGradient(
                      colors: <Color>[
                        // Colors.white,
                        // Colors.green,
                        //add more color here.
                        Colors.white.withOpacity(0.9),
                        Colors.green.withOpacity(0.9),

                      ],
                    ).createShader(Rect.fromLTWH(415.0, 0.0,1.0, 10.0))
                ),
              ),
            ),
          ),
        ),
      ],),
    );
  }
}