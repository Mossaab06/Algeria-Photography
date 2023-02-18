import 'package:flutter/material.dart';

class Shading extends StatelessWidget {
  const Shading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return Container(
      height: size.height,
      child: Stack(children: [
        Container(
          height: 500,
          width: size.width,
          decoration: BoxDecoration(
           // color: Colors.green,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0),
                  blurRadius: 10000,
                  spreadRadius:40,
                  blurStyle: BlurStyle.outer,
                  offset: Offset(0, 0)
              ),
            ],
          ),),



        // Center(
        //   child: Container(
        //     height: 500,
        //     width: size.width,
        //     decoration: BoxDecoration(
        //       color: Colors.white,
        //       boxShadow: [
        //         BoxShadow(
        //             color: Colors.black.withOpacity(0.9),
        //             blurRadius: 100,
        //             spreadRadius:70,
        //             blurStyle: BlurStyle.outer,
        //             offset: Offset(0, 100)
        //         ),
        //       ],
        //     ),),
        // ),
        // Center(
        //   child: Container(
        //     decoration: BoxDecoration(
        //       shape: BoxShape.circle,
        //       //color: Colors.white,
        //       boxShadow: [
        //         BoxShadow(
        //             color: Colors.black.withOpacity(0.05),
        //             blurRadius: 10000,
        //             spreadRadius:60,
        //             blurStyle: BlurStyle.outer,
        //             offset: Offset(0, 0)
        //         ),
        //
        //       ],
        //       //  borderRadius: BorderRadius.all(Radius.elliptical(800, 100))
        //     ),
        //     //height: 500,
        //     width: 700,
        //
        //   ),
        // ),
        // Center(
        //   child: Container(
        //     decoration: BoxDecoration(
        //       shape: BoxShape.circle,
        //       //color: Colors.white,
        //       boxShadow: [
        //         BoxShadow(
        //             color: Colors.black.withOpacity(0.05),
        //             blurRadius: 10000,
        //             spreadRadius:120,
        //             blurStyle: BlurStyle.outer,
        //             offset: Offset(0, 0)
        //         ),
        //
        //       ],
        //       //  borderRadius: BorderRadius.all(Radius.elliptical(800, 100))
        //     ),
        //     //height: 500,
        //     width: 700,
        //
        //   ),
        // ),
        // Center(
        //   child: Container(
        //     decoration: BoxDecoration(
        //       //color: Colors.white,
        //       boxShadow: [
        //         BoxShadow(
        //             color: Colors.black87.withOpacity(0.5),
        //             blurRadius: 1000,
        //             spreadRadius:800,
        //             blurStyle: BlurStyle.inner,
        //             offset: Offset(00, 0)
        //         ),
        //
        //       ],
        //       //  borderRadius: BorderRadius.all(Radius.elliptical(800, 100))
        //     ),
        //     //height: 500,
        //     width: 800,
        //
        //   ),
        // ),
      ],),

    );
  }
}