import 'package:amd_metro_u/curved_bar.dart';
import 'package:amd_metro_u/main.dart';
import 'package:amd_metro_u/map.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:amd_metro_u/stations/stations.dart';

class ResultScreen extends StatelessWidget {
  final StationData stationdata = StationData();
  @override
  Widget build(BuildContext context) {
    final stationData = Provider.of<StationData>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Metro App')),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: const Color.fromARGB(255, 168, 221, 133),
      bottomNavigationBar: NavBAr(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 370,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 111, 164, 115),
              border: Border.all(color: Colors.transparent)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color.fromARGB(255, 168, 221, 133),
                    border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0), width: 0.5),
                  ),
                  child: Center(
                    child: Text('Source: ${stationData.sourceStation}'),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color.fromARGB(255, 168, 221, 133),
                      border: Border.all(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          width: 0.5),
                    ),
                    child: Center(
                        child: Text(
                            'Destination: ${stationData.destinationStation}'))),
                const SizedBox(height: 20),
                Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color.fromARGB(255, 168, 221, 133),
                      border: Border.all(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          width: 0.5),
                    ),
                    child: Center(
                        child:
                            Text("Fare: ${stationData.calculateFare()}  ₹"))),
                const SizedBox(height: 20),
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color.fromARGB(255, 168, 221, 133),
                    border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0), width: 0.5),
                  ),
                  child: Center(
                    child: Text(
                        'Estimated Time: ${stationData.calculateTime()} minutes'),
                  ),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  Map_screen()
                        ),
                    );
                  },
                  child: const Text('Show Route'),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainScreen()),
                    );
                  },
                  child: const Text('Home'),
                ),
              ],
            ),
          ),
        ),
        
      ),
      
    );
  }
}
