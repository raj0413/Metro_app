import 'package:amd_metro_u/stations/stations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Map_screen extends StatelessWidget {
  //final StationData stationdata;
  //final List<String> stations;
  const Map_screen({
    super.key,
    /*required this.stationdata*/
  });

  @override
  Widget build(BuildContext context) {
    final stationData = context.watch<StationData>();
    // 
    return Scaffold(
      appBar: AppBar(
         backgroundColor:  const Color.fromARGB(255, 111, 164, 115),
        title: const Center(child: Text('Metro App')),
        automaticallyImplyLeading: false,
      ),
        backgroundColor: const Color.fromARGB(255, 168, 221, 133),
        body: ListView.builder(
            itemCount: stationData.stations.length,
            itemBuilder: (context, index) {
              return ListTile(
                dense: true,
                leading: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 8, // Adjust the width of the blue line as needed
                      color:  const Color.fromARGB(255, 111, 164, 115) 
                    ),
                    Text(
                      '\u2022',
                      style: TextStyle(fontSize: 40),
                    ), // Bullet point character
                  ],
                ),
                title: Text(stationData.stations[index]),
                
              );
            }
            // ListView.builder(
            //   itemCount: stations.length,
            //   itemBuilder: (context, index) {
            //     return ListTile(
            //       title: Text(stations[index]),
            //     );
            //   }
            // ListView.builder(
            //   itemCount: intermediatestations.length,
            //   itemBuilder: (context, index) {
            //     return ListTile(
            //       title: Text(intermediatestations[index]),
            //     );
            //   })
            ));
  }
}


