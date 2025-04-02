import 'package:amd_metro_u/info_page.dart';
import 'package:amd_metro_u/main.dart';
import 'package:amd_metro_u/map.dart';
import 'package:amd_metro_u/result_Screen.dart';
import 'package:amd_metro_u/stations/stations.dart';
import 'package:page_transition/page_transition.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavBAr extends StatefulWidget {
  const NavBAr({super.key});

  @override
  State<NavBAr> createState() => _NavBArState();
}

class _NavBArState extends State<NavBAr> {
  final StationData stationdata = StationData();
  int Index = 0 ;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: CurvedNavigationBar(
        backgroundColor:   const Color.fromARGB(255,168, 221, 133),
        color:const Color.fromARGB(255, 111, 164, 115) ,
        animationDuration: const Duration(milliseconds: 500),
        index: Index,
        onTap: (selectedIndex){
          setState(() {
            Index = selectedIndex;
          });
        },
        items: const [
        
      Icon(Icons.home),
      Icon(Icons.location_on_outlined),
      Icon(Icons.av_timer_sharp)
      ]
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: selectedWidget(index: Index)
      ),
    ); 
    
    
  }
  Widget selectedWidget ({required int index}){
    Widget widget;
    switch(index){
      case 0:
      widget = MainScreen(); 
      break;
       case 1:
      widget =  Map_screen();
      break;
      case 2:
      widget = InfoPage();
      default: 
       widget = MainScreen();
      break;
    }
    return widget;
  }
}