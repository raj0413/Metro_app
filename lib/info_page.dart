import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';



class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
      PageTransitionType transition = PageTransitionType.fade;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color.fromARGB(255, 111, 164, 115),
        title: const Center(child: Text('Timings'),),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: const Color.fromARGB(255, 168, 221, 133),
      
       
       
      body:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
        Container(
          height: 600,
          width: double.infinity ,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 111, 164, 115),
              border: Border.all(color: Colors.transparent)),
        ),
        Lottie.network('https://lottie.host/cceb7f11-40f2-4d3a-aed0-6f8f3ebc521b/uqG5At5dOQ.json'),
        const SizedBox(height: 30,),
       const Center(child:  Padding(
         padding: EdgeInsets.all(8.0),
         child: Text('• Ahmedabad Metro operates from 6:20 AM to 10:00 PM on a daily basis \n\n • From 6:20 AM to 7:00AM, the metro arrives on every available station at every 20 minutes. \n\n • From 7:00 AM to 10:00PM, the metro arrives on every available station at every 12 minutes '),
       ))
          ],
        ),
      )
      
      
      
      /*Column(
        children: [


* Ahmedabad Metro operates from 6:20 AM to 10:00 PM on a daily basis

From 6:20 AM to 7:00AM, the metro arrives on every available station at every 20 minutes.

 From 7:00 AM to 10:00PM, the metro arrives on every available station at every 12 minutes








          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 600,
              
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 111, 164, 115),
                  border: Border.all(color: Colors.transparent)),),
                  
                  
              ),
              const Center
              
              (
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('⁜ Hello 1 2 3 4'),
                  ],
                ))
        ],
      ),*/
    


    );
  }
}