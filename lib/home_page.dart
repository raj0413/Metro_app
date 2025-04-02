import 'package:amd_metro_u/curved_bar.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late AnimationController animationController;


  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    );
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.push(
          context,
         PageTransition(child: const NavBAr(), type: PageTransitionType.fade , 
         duration:const Duration(milliseconds: 900)
         )
        );
      }
    });
  }

   @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [_buildAnime(), 
         // _text(), 
          Positioned(
            top: 700, right: 0, bottom: 0, left: 0,
            child: _getstarted(),
            
            ),
             Positioned(
            top: 0, right: 0, bottom: 200, left: 0,
            child: _logohere()
            
            ),
           
          ],
        ),
      ),
    );
  }

  _buildAnime() {
    return Lottie.network(
        "https://lottie.host/b3dc277e-0398-404a-8c12-9833f1119486/sirpJwlHB3.json",
        fit: BoxFit.fill,
        controller: animationController,
        onLoaded: (composition){
          animationController.forward();
        },
        repeat: false,
        height: 784);
  }

  _text() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 200,
        ),
        Text(
          "Welcome to project ' Quote Generator'",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 250,
        ),
      ],
    );
  }

  _getstarted() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NavBAr()),
                );
              },
              child: Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        width: 1.5,
                        color: const Color.fromARGB(255, 255, 252, 252))),
                child: const Center(
                    child: Text(
                  'Get Started',
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 15),
                )),
                
              )),
        ),
        
      ],
    );
  }
  

  _logohere(){
     return Center(
       child: Image.asset(
        'lib/assets/logo.png',
        fit: BoxFit.scaleDown,
        height: 300 ,
        
        width: 300,
        color: Colors.black,
       
           ),
     );
  }
}
