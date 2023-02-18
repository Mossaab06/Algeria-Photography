import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../HomePage.dart';

class HomeController extends GetxController {
  List BackGroundImage=[
    'assets/General/IMG_20230129_163750 - Copy.jpg',
    'assets/General/IMG_20210504_152325~2.jpg',
    'assets/General/IMG_20210504_153600~2.jpg',
    'assets/General/IMG_20230129_163750 - Copy.jpg',
    'assets/General/IMG_20210504_152325~2.jpg',
    'assets/General/IMG_20210504_153600~2.jpg',
    'assets/General/IMG_20210504_152325~2.jpg',
    'assets/General/IMG_20210504_153600~2.jpg',
    'assets/General/IMG_20210504_152325~2.jpg',
    'assets/General/IMG_20210504_153600~2.jpg',

  ];
  List StatesNames=['Algiers',"Boumerdas","Medea","Blida"].obs;
  List StatesInfo=[
    "Algiers is the capital city of Algeria, on the country’s Mediterranean coast. "
  "It’s known for the whitewashed buildings of the Kasbah, a medina with steep winding streets, "
  "Ottoman palaces and a ruined citadel. The 17th-century Ketchaoua Mosque is flanked by 2 large minarets. "
  "The Great Mosque has marble columns and arches. The clifftop Catholic basilica of Notre-Dame d'Afrique "
  "features a large silver dome and mosaics."

    ,"Boumerdès is the capital city of Boumerdès Province, Algeria. It is located on the Mediterranean Sea."
        " It had a population of 28,500 in 1998 and 15,000 in 1987. Boumerdès is a seaside city located in the "
        "north of Algeria about 50 km east of Algiers and 50 km west of Tizi Ouzou."


    ,"Médéa, also called Lemdiyya, town, north-central Algeria. It is situated on a plateau in the Tell Atlas"
        " Mountains 56 miles (90 km) south of Algiers. Shadowed by Mount Nador (3,693 feet [1,126 metres]) to "
        "the northwest, the town is surrounded by fertile, well-watered soil that forms the watershed for the Chelif "
        "River and the Wadis Chiffa and Isser. Located on the site of Lambdia, a Roman military post,"
        " Médéa was founded in the 10th century by Yūsuf Buluggin I ibn Zīrī and became capital of the "
        "Turkish beylik (principality) of Titteri in the 14th. It was occupied by Abdelkader, the Algerian national"
        " leader.",



    "Blida, also called (after 1981) El-Boulaida, town, northern Algeria. It lies on the southern edge of the"
        " Mitidja plain at the base of the Tell Atlas Mountains and is about 30 miles (48 km) southwest of Algiers. "
        ,"S"].obs;


  List StatesAdditionalInfo=["Algiers is also known as el-Behdja (البهجة, 'The Joyous') or 'Algiers the White'"
  " (French: Alger la Blanche) for its whitewashed buildings, seen rising from the sea."


  ,' it is popular with those looking to head to the many beaches during weekends and holidays. '
        'Its climate is mediterranean, much like the south of France though the heights of Boumerdès '
        'are noticeably cooler. Despite its large number of beaches, it is in fact mostly mountainous.',


    "",


    "Blida (boleida, diminutive of the Arabic balad, “city”) occupies the site of a Roman military station. "
        "Formerly walled with six gates. A mosque was built in the town by order of Khayr al-Dīn (Barbarossa)."
        "It is overlooked (south) by the ruined Fort Mimich. Mount el-Mergueb "
        "(5,344 feet [1,629 metres]), Chiffa Gorge, and Chrea mountain and ski resort are nearby. Crops grown in"
        " adjacent areas of the Mitidja plain include wheat, barley, citrus fruits, vegetables, tobacco, and olives."
        " There are also vineyards in the area. Pop. (1998) 226,512; (2008) 292,335.","s","s"].obs;


  List <List>IndexDesktop =[
    [0,1,2],[3,4,5],[6,7,8],[9,10,11],[12,13,14],
  ];
  List <List>IndexPic=[
    [0,1,2,3,4,5],[6,7,8,9,10,11],[12,13,14,15,16,17],[18,19,20,21,22,23],[24,25,26,27,28,29],
  ];
  List Algiers = [
    'assets/Algiers/1.jpg',
    'assets/Algiers/2.jpg',
    'assets/Algiers/3.jpg',
    'assets/Algiers/4.jpg',
    'assets/Algiers/5.jpg',
    'assets/Algiers/6.jpg',
    'assets/Algiers/7.jpg',
    'assets/Algiers/8.jpg',
    'assets/Algiers/9.jpg',
    'assets/Algiers/10.jpg',
    'assets/Algiers/11.jpg',
    'assets/Algiers/12.jpg',
    'assets/Algiers/13.jpg',
    'assets/Algiers/14.jpg',
    'assets/Algiers/15.jpg',
    'assets/Algiers/16.jpg',
    'assets/Algiers/17.jpg',
    'assets/Algiers/18.jpg',
    'assets/Algiers/19.jpg',
    'assets/Algiers/20.jpg',
    'assets/Algiers/21.jpg',
    'assets/Algiers/22.jpg',
    'assets/Algiers/23.jpg',
    'assets/Algiers/24.jpg',
    'assets/Algiers/25.jpg',
    'assets/Algiers/26.jpg',
    'assets/Algiers/27.jpg',
    'assets/Algiers/28.jpg',
    'assets/Algiers/29.jpg',
    'assets/Algiers/30.jpg',
    'assets/Algiers/31.jpg',
    'assets/Algiers/32.jpg',
    'assets/Algiers/33.jpg',
    'assets/Algiers/34.jpg',
    'assets/Algiers/35.jpg',
    'assets/Algiers/36.jpg',
    'assets/Algiers/37.jpg',
    'assets/Algiers/38.jpg',
    'assets/Algiers/39.jpg',
    'assets/Algiers/40.jpg',
    'assets/Algiers/41.jpg',
    'assets/Algiers/42.jpg',
    'assets/Algiers/43.jpg',
    'assets/Algiers/44.jpg',
    'assets/Algiers/45.jpg',
    'assets/Algiers/46.jpg',
    'assets/Algiers/47.jpg',
    'assets/Algiers/48.jpg',
    'assets/Algiers/49.jpg',
    'assets/Algiers/50.jpg',
    'assets/Algiers/51.jpg',
    'assets/Algiers/52.jpg',
    'assets/Algiers/53.jpg',
    'assets/Algiers/54.jpg',
    'assets/Algiers/55.jpg',
    'assets/Algiers/56.jpg',
    'assets/Algiers/57.jpg',
    'assets/Algiers/58.jpg',

  ];
  List Boumerdas = [
    'assets/Boumerdas/1.jpg',
    'assets/Boumerdas/2.jpg',
    'assets/Boumerdas/3.jpg',
    'assets/Boumerdas/4.jpg',
    'assets/Boumerdas/5.jpg',
    'assets/Boumerdas/6.jpg',
    'assets/Boumerdas/7.jpg',
    'assets/Boumerdas/8.jpg',
    'assets/Boumerdas/9.jpg',
    'assets/Boumerdas/10.jpg',
    'assets/Boumerdas/11.jpg',
    'assets/Boumerdas/12.jpg',
    'assets/Boumerdas/13.jpg',
    'assets/Boumerdas/14.jpg',
    'assets/Boumerdas/15.jpg',
    'assets/Boumerdas/16.jpg',
    'assets/Boumerdas/17.jpg',
    'assets/Boumerdas/18.jpg',
    'assets/Boumerdas/19.jpg',
    'assets/Boumerdas/20.jpg',
    'assets/Boumerdas/21.jpg',
    'assets/Boumerdas/22.jpg',
    'assets/Boumerdas/23.jpg',
    'assets/Boumerdas/24.jpg',
    'assets/Boumerdas/25.jpg',
    'assets/Boumerdas/26.jpg',
    'assets/Boumerdas/27.jpg',
    'assets/Boumerdas/28.jpg',
    'assets/Boumerdas/29.jpg',
    'assets/Boumerdas/30.jpg',
    'assets/Boumerdas/31.jpg',
    'assets/Boumerdas/32.jpg',
    'assets/Boumerdas/33.jpg',
    'assets/Boumerdas/34.jpg',
    'assets/Boumerdas/35.jpg',
    'assets/Boumerdas/36.jpg',
    'assets/Boumerdas/37.jpg',
    'assets/Boumerdas/38.jpg',
    'assets/Boumerdas/39.jpg',
    'assets/Boumerdas/40.jpg',
    'assets/Boumerdas/41.jpg',
    'assets/Boumerdas/42.jpg',
    'assets/Boumerdas/43.jpg',
    'assets/Boumerdas/44.jpg',
    'assets/Boumerdas/45.jpg',
    'assets/Boumerdas/46.jpg',
    'assets/Boumerdas/47.jpg',
    'assets/Boumerdas/48.jpg',
    'assets/Boumerdas/49.jpg',
    'assets/Boumerdas/50.jpg',
    'assets/Boumerdas/51.jpg',
    'assets/Boumerdas/52.jpg',
    'assets/Boumerdas/53.jpg',
    'assets/Boumerdas/54.jpg',
    'assets/Boumerdas/55.jpg',
    'assets/Boumerdas/56.jpg',
    'assets/Boumerdas/57.jpg',
    'assets/Boumerdas/58.jpg',
    'assets/Boumerdas/59.jpg',
    'assets/Boumerdas/60.jpg',
    'assets/Boumerdas/61.jpg',
    'assets/Boumerdas/62.jpg',
    'assets/Boumerdas/63.jpg',
    'assets/Boumerdas/64.jpg',
    'assets/Boumerdas/65.jpg',
    'assets/Boumerdas/66.jpg',
    'assets/Boumerdas/67.jpg',
    'assets/Boumerdas/68.jpg',
    'assets/Boumerdas/69.jpg',
  ];
  List  DesktopBoumerdas =[
    'assets/Boumerdas Desktop/1.jpg',
    'assets/Boumerdas Desktop/2.jpg',
    'assets/Boumerdas Desktop/3.jpg',
    'assets/Boumerdas Desktop/4.jpg',
    'assets/Boumerdas Desktop/5.jpg',
    'assets/Boumerdas Desktop/6.jpg',
    'assets/Boumerdas Desktop/7.jpg',
    'assets/Boumerdas Desktop/8.jpg',
    'assets/Boumerdas Desktop/9.jpg',
    'assets/Boumerdas Desktop/10.jpg',
    'assets/Boumerdas Desktop/11.jpg',
    'assets/Boumerdas Desktop/12.jpg',
    'assets/Boumerdas Desktop/13.jpg',
    'assets/Boumerdas Desktop/14.jpg',
    'assets/Boumerdas Desktop/15.jpg',
    'assets/Boumerdas Desktop/16.jpg',
    'assets/Boumerdas Desktop/17.jpg',
    'assets/Boumerdas Desktop/18.jpg',
    'assets/Boumerdas Desktop/19.jpg',
    'assets/Boumerdas Desktop/20.jpg',
    'assets/Boumerdas Desktop/21.jpg',
    'assets/Boumerdas Desktop/22.jpg',
    'assets/Boumerdas Desktop/23.jpg',
    'assets/Boumerdas Desktop/24.jpg',
    'assets/Boumerdas Desktop/25.jpg',
    'assets/Boumerdas Desktop/26.jpg',
  ];
  List Blida = [
  //  'assets/Blida/1.jpg',
    'assets/Blida/2.jpg',
    'assets/Blida/3.jpg',
    'assets/Blida/4.jpg',
    'assets/Blida/5.jpg',
    'assets/Blida/6.jpg',
    'assets/Blida/7.jpg',
    'assets/Blida/8.jpg',
    'assets/Blida/9.jpg',
    'assets/Blida/10.jpg',
    'assets/Blida/11.jpg',
    'assets/Blida/12.jpg',
    'assets/Blida/13.jpg',
    'assets/Blida/14.jpg',
    'assets/Blida/15.jpg',
    'assets/Blida/16.jpg',
    'assets/Blida/17.jpg',
    'assets/Blida/18.jpg',
    'assets/Blida/19.jpg',
    'assets/Blida/20.jpg',
  ];
  List DesktopBlida =[
    'assets/Blida Desktop/1.jpg',
    'assets/Blida Desktop/2.jpg',
    'assets/Blida Desktop/3.jpg',
    'assets/Blida Desktop/4.jpg',
    'assets/Blida Desktop/5.jpg',
    'assets/Blida Desktop/6.jpg',
    'assets/Blida Desktop/7.jpg',
    'assets/Blida Desktop/8.jpg',
    'assets/Blida Desktop/9.jpg',
    'assets/Blida Desktop/10.jpg',
  ];
  List Medea = [
    'assets/Medea/1.jpg',
    'assets/Medea/2.jpg',
    'assets/Medea/3.jpg',
    'assets/Medea/4.jpg',
    'assets/Medea/5.jpg',
    'assets/Medea/6.jpg',
    'assets/Medea/7.jpg',
    'assets/Medea/8.jpg',
    'assets/Medea/9.jpg',
    'assets/Medea/10.jpg',
    //'assets/Medea/11.jpg',
    'assets/Medea/12.jpg',
    'assets/Medea/13.jpg',
    'assets/Medea/14.jpg',
    'assets/Medea/15.jpg',
    'assets/Medea/16.jpg',
    'assets/Medea/17.jpg',
    'assets/Medea/18.jpg',
    'assets/Medea/19.jpg',
    'assets/Medea/20.jpg',
    'assets/Medea/21.jpg',
    'assets/Medea/22.jpg',
    'assets/Medea/23.jpg',
    'assets/Medea/24.jpg',
    'assets/Medea/25.jpg',
    'assets/Medea/26.jpg',
    'assets/Medea/27.jpg',
    'assets/Medea/28.jpg',
    'assets/Medea/29.jpg',
    'assets/Medea/30.jpg',
  ];
  List DesktopMedea =[
    'assets/Medea Desktop/2.jpg',
    'assets/Medea Desktop/3.jpg',
    'assets/Medea Desktop/4.jpg',
    //'assets/Medea Desktop/5.jpg',
    'assets/Medea Desktop/6.jpg',
    'assets/Medea Desktop/7.jpg',
    'assets/Medea Desktop/8.jpg',
    'assets/Medea Desktop/9.jpg',
    'assets/Medea Desktop/10.jpg',
    'assets/Medea Desktop/11.jpg',
    'assets/Medea Desktop/12.jpg',
    'assets/Medea Desktop/13.jpg',
    'assets/Medea Desktop/1.jpg',

  ];









  List Cities=["ALGERIA","BOUMERDES","MEDEA"].obs;
  List CitiesArab=["الجزائر","بومرداس","المدية"].obs;
  List MainCities=["Algiers     ","Boumerdes   ","Medea   ","Blida   "].obs;
  List MainCitiesComments=["GET  INTO  THE  FUTURE  IN","GET  IMPRESSED  BY","TURN  BACK  THE  TIME  IN","MAKE  FRIENDS  WITH  NATURE"].obs;
  RxInt INDEXX = 0.obs;


 RxInt currentPage=1.obs;
changePage(){
 setState(){
  pageController.animateToPage(2, duration: Duration(milliseconds: 1000), curve: Curves.decelerate);

 }
}
 PageController pageController = PageController();
var Color1 = Colors.white.obs;
var Color2 = Colors.white.obs;
var Color3 = Colors.white.obs;

RxBool MoreInfoVisible =true.obs;
//TabController myController = TabController(length: 3,vsync:this,initialIndex: 0 );

}