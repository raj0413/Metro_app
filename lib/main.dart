
import 'package:amd_metro_u/home_page.dart';
import 'package:amd_metro_u/result_Screen.dart';
import 'package:amd_metro_u/stations/stations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
//import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => StationData(),
      child: const MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int Index = 0;
  @override
  Widget build(BuildContext context) {
    final stationData = Provider.of<StationData>(context);
    //PageTransitionType transition = PageTransitionType.fade;

    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color.fromARGB(255, 111, 164, 115),
        title: const Center(child: Text('Metro App')),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: const Color.fromARGB(255, 168, 221, 133),
     
     
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 111, 164, 115),
              border: Border.all(color: Colors.transparent)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(243, 255, 255, 255),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Row(
                            children: [
                              const Icon(Icons.location_on_outlined),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text('Select Source'),
                              const SizedBox(
                                width: 88,
                              ),
                              InkWell(
                                  onTap: () {
                                    stationData.clearSourceStation();
                                  },
                                  child: const Icon(Icons.cancel_outlined))
                            ],
                          ),
                          value: stationData.sourceStation,
                          onChanged: (value) {
                            stationData.setSourceStation(value!);
                          },
                          items: stationData.stations.map((String station) {
                            return DropdownMenuItem<String>(
                                value: station,
                                child: Row(
                                  children: [
                                    const Icon(Icons.location_on_outlined),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(station),
                                    InkWell(
                                        onTap: () {
                                          stationData.clearSourceStation();
                                        },
                                        child:
                                            const Icon(Icons.cancel_outlined))
                                  ],
                                ));
                          }).toList(),
                          icon: const Icon(Icons.arrow_drop_down,
                              color: Colors.transparent),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(243, 255, 255, 255),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Row(
                            children: [
                              const Icon(
                                Icons.home_work_outlined,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text('Select Destination'),
                              const SizedBox(
                                width: 50,
                              ),
                              InkWell(
                                  onTap: () {
                                    stationData.clearDestinationStation();
                                  },
                                  child: const Icon(Icons.cancel_outlined))
                            ],
                          ),
                          value: stationData.destinationStation,
                          onChanged: (value) {
                            stationData.setDestinationStation(value!);
                          },
                          items: stationData.stations.map((String station) {
                            return DropdownMenuItem<String>(
                              value: station,
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.home_work_outlined,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(station),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        stationData.clearDestinationStation();
                                      },
                                      child: const Icon(Icons.cancel_outlined))
                                ],
                              ),
                              //,
                            );
                          }).toList(),
                          icon: const Icon(Icons.arrow_drop_down,
                              color: Colors.transparent),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 168, 221, 133),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResultScreen()),
                    );
                  },
                  child: const Text('Calculate Fare and Time'),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 168, 221, 133),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      stationData.clearAllStations();
                    },
                    child: const Text('Clear'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screen = [];
}
