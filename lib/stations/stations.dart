import "package:flutter/material.dart";

class StationData extends ChangeNotifier {
  List<String> _stations = [
    'Vastral Gam',
    'NIrant Cross Road',
    'Vastral',
    'Rabari Colony',
    'Amraiwadi',
    'Apparel Park',
    'Kankaria East',
    'Kalupur Railway Station',
    'Gheekanta',
    'Shahpur',
    'Old High Court',
    'SP Stadium',
    'Commerce Six Road',
    'Gujarat University',
    'Gurukul Road',
    'Doordarshan Kendra',
    'Thaltej',
    'Thaltej Gam'
  ];
  String? _sourceStation;
  String? _destinationStation;
  String? get sourceStation => _sourceStation;
  String? get destinationStation => _destinationStation;



  final Map<String, Map<String, Map<String, dynamic>>> _stationData = {
    //imp here
    'Vastral Gam': {
      'Vastral': {'time': 10.0, 'fare': 5.0},
      'Old High Court': {'time': 25.0, 'fare': 20.0},
      'Thaltej Gam': {'time': 45.0, 'fare': 25.0},
      'Thaltej': {'time': 40.0, 'fare': 25.0},
      'Doordarshan Kendra': {'time': 40.0, 'fare': 25.0},
      'Gurukul Road': {'time': 40.0, 'fare': 20.0},
      'Gujarat University': {'time': 40.0, 'fare': 20.0},
      'Commerce Six Road': {'time': 40.0, 'fare': 20.0},
      'SP Stadium': {'time': 40.0, 'fare': 20.0},
      'Shahpur': {'time': 40.0, 'fare': 15.0},
      'Gheekanta': {'time': 40.0, 'fare': 15.0},
      'Kalupur Railway Station': {'time': 40.0, 'fare': 15.0},
      'Kankaria East': {'time': 40.0, 'fare': 10.0},
      'Apparel Park': {'time': 40.0, 'fare': 10.0},
      'Amraiwadi': {'time': 40.0, 'fare': 10.0},
      'Rabari Colony': {'time': 40.0, 'fare': 10.0},
      'NIrant Cross Road': {'time': 40.0, 'fare': 5.0},
    },
    //original here

    // copy start
    'Vastral': {
      "Vastral Gam": {"time": 10.0, "fare": 5.0},
      "Old High Court": {"time": 25.0, "fare": 20.0},
      "Thaltej Gam": {"time": 45.0, "fare": 25.0},
      "Thaltej": {"time": 40.0, "fare": 25.0},
      "Doordarshan Kendra": {"time": 40.0, "fare": 25.0},
      "Gurukul Road": {"time": 40.0, "fare": 20.0},
      "Gujarat University": {"time": 40.0, "fare": 20.0},
      "Commerce Six Road": {"time": 40.0, "fare": 20.0},
      "SP Stadium": {"time": 40.0, "fare": 20.0},
      "Shahpur": {"time": 40.0, "fare": 15.0},
      "Gheekanta": {"time": 40.0, "fare": 15.0},
      "Kalupur Railway Station": {"time": 40.0, "fare": 15.0},
      "Kankaria East": {"time": 40.0, "fare": 10.0},
      "Apparel Park": {"time": 40.0, "fare": 10.0},
      "Amraiwadi": {"time": 40.0, "fare": 10.0},
      "Rabari Colony": {"time": 40.0, "fare": 10.0},
      "NIrant Cross Road": {"time": 40.0, "fare": 5.0}
    },

    "NIrant Cross Road": {
      "Vastral Gam": {"time": 40.0, "fare": 5.0},
      "Vastral": {"time": 40.0, "fare": 5.0},
      "Old High Court": {"time": 40.0, "fare": 5.0},
      "Thaltej Gam": {"time": 40.0, "fare": 5.0},
      "Thaltej": {"time": 40.0, "fare": 5.0},
      "Doordarshan Kendra": {"time": 40.0, "fare": 5.0},
      "Gurukul Road": {"time": 40.0, "fare": 5.0},
      "Gujarat University": {"time": 40.0, "fare": 5.0},
      "Commerce Six Road": {"time": 40.0, "fare": 5.0},
      "SP Stadium": {"time": 40.0, "fare": 5.0},
      "Shahpur": {"time": 40.0, "fare": 5.0},
      "Gheekanta": {"time": 40.0, "fare": 5.0},
      "Kalupur Railway Station": {"time": 40.0, "fare": 5.0},
      "Kankaria East": {"time": 40.0, "fare": 5.0},
      "Apparel Park": {"time": 40.0, "fare": 5.0},
      "Amraiwadi": {"time": 40.0, "fare": 5.0},
      "Rabari Colony": {"time": 40.0, "fare": 5.0}
    },

    "Rabari Colony": {
      "Vastral Gam": {"time": 40.0, "fare": 10.0},
      "Vastral": {"time": 40.0, "fare": 10.0},
      "Old High Court": {"time": 40.0, "fare": 15.0},
      "Thaltej Gam": {"time": 40.0, "fare": 25.0},
      "Thaltej": {"time": 40.0, "fare": 20.0},
      "Doordarshan Kendra": {"time": 40.0, "fare": 20.0},
      "Gurukul Road": {"time": 40.0, "fare": 20.0},
      "Gujarat University": {"time": 40.0, "fare": 20.0},
      "Commerce Six Road": {"time": 40.0, "fare": 20.0},
      "SP Stadium": {"time": 40.0, "fare": 20.0},
      "Shahpur": {"time": 40.0, "fare": 15.0},
      "Gheekanta": {"time": 40.0, "fare": 15.0},
      "Kalupur Railway Station": {"time": 40.0, "fare": 15.0},
      "Kankaria East": {"time": 40.0, "fare": 10.0},
      "Apparel Park": {"time": 40.0, "fare": 10.0},
      "Amraiwadi": {"time": 40.0, "fare": 10.0},
      "Rabari Colony": {"time": 40.0, "fare": 5.0}
    },

    "Amraiwadi": {
      "Vastral Gam": {"time": 40.0, "fare": 10.0},
      "Vastral": {"time": 40.0, "fare": 10.0},
      "Old High Court": {"time": 40.0, "fare": 15.0},
      "Thaltej Gam": {"time": 40.0, "fare": 25},
      "Thaltej": {"time": 40.0, "fare": 20.0},
      "Doordarshan Kendra": {"time": 40.0, "fare": 20.0},
      "Gurukul Road": {"time": 40.0, "fare": 20.0},
      "Gujarat University": {"time": 40.0, "fare": 20.0},
      "Commerce Six Road": {"time": 40.0, "fare": 20.0},
      "SP Stadium": {"time": 40.0, "fare": 20.0},
      "Shahpur": {"time": 40.0, "fare": 15.0},
      "Gheekanta": {"time": 40.0, "fare": 15.0},
      "Kalupur Railway Station": {"time": 40.0, "fare": 15.0},
      "Kankaria East": {"time": 40.0, "fare": 10.0},
      "Apparel Park": {"time": 40.0, "fare": 10.0},
      "Amraiwadi": {"time": 40.0, "fare": 5.0},
      "Rabari Colony": {"time": 40.0, "fare": 5.0}
    },

    "Apparel Park": {
      "Vastral Gam": {"time": 40.0, "fare": 10.0},
      "Vastral": {"time": 40.0, "fare": 10.0},
      "Old High Court": {"time": 40.0, "fare": 15.0},
      "Thaltej Gam": {"time": 40.0, "fare": 25.0},
      "Thaltej": {"time": 40.0, "fare": 20.0},
      "Doordarshan Kendra": {"time": 40.0, "fare": 20.0},
      "Gurukul Road": {"time": 40.0, "fare": 20.0},
      "Gujarat University": {"time": 40.0, "fare": 20.0},
      "Commerce Six Road": {"time": 40.0, "fare": 20.0},
      "SP Stadium": {"time": 40.0, "fare": 20.0},
      //uncalculated data
    },

    "Old High Court": {
      "Thaltej Gam": {"time": 25.0, "fare": 10.0},
      "Thaltej": {"time": 40.0, "fare": 10.0},
      "Doordarshan Kendra": {"time": 40.0, "fare": 10.0},
      "Gurukul Road": {"time": 40.0, "fare": 10.0},
      "Gujarat University": {"time": 40.0, "fare": 10.0},
      "Commerce Six Road": {"time": 40.0, "fare": 10.0},
      "SP Stadium": {"time": 40.0, "fare": 10.0},
      "Shahpur": {"time": 40.0, "fare": 10.0},
      "Gheekanta": {"time": 40.0, "fare": 10.0},
      "Kalupur Railway Station": {"time": 40.0, "fare": 10.0},
      "Kankaria East": {"time": 40.0, "fare": 10.0},
      "Apparel Park": {"time": 40.0, "fare": 15.0},
      "Amraiwadi": {"time": 40.0, "fare": 15.0},
      "Rabari Colony": {"time": 40.0, "fare": 15.0},
      "NIrant Cross Road": {"time": 40.0, "fare": 20.0},
      "Vastral": {"time": 40.0, "fare": 20.0},
      "Vastral Gam": {"time": 25.0, "fare": 20.0}
    },

    "Thaltej Gam": {
      "Thaltej": {"time": 5.0, "fare": 5.0},
      "Doordarshan Kendra": {"time": 10.0, "fare": 5.0},
      "Gurukul Road": {"time": 10.0, "fare": 10.0},
      "Gujarat University": {"time": 10.0, "fare": 10.0},
      "Commerce Six Road": {"time": 10.0, "fare": 10.0},
      "SP Stadium": {"time": 10.0, "fare": 10.0},
      "Old High Court": {"time": 25.0, "fare": 10.0},
      "Shahpur": {"time": 40.0, "fare": 15.0},
      "Gheekanta": {"time": 40.0, "fare": 15.0},
      "Kalupur Railway Station": {"time": 40.0, "fare": 15.0},
      "Kankaria East": {"time": 40.0, "fare": 20.0},
      "Apparel Park": {"time": 40.0, "fare": 20.0},
      "Amraiwadi": {"time": 40.0, "fare": 20.0},
      "Rabari Colony": {"time": 40.0, "fare": 20.0},
      "Vastral": {"time": 40.0, "fare": 25.0},
      "NIrant Cross Road": {"time": 40.0, "fare": 25.0},
      "Vastral Gam": {"time": 45.0, "fare": 25.0}
    },

    "Thaltej": {
      "Thaltej Gam": {"time": 5.0, "fare": 5.0},
      "Doordarshan Kendra": {"time": 40.0, "fare": 5.0},
      "Gurukul Road": {"time": 40.0, "fare": 5.0},
      "Gujarat University": {"time": 40.0, "fare": 10.0},
      "Commerce Six Road": {"time": 40.0, "fare": 10.0},
      "SP Stadium": {"time": 40.0, "fare": 10.0},
      "Old High Court": {"time": 40.0, "fare": 10.0},
      "Shahpur": {"time": 40.0, "fare": 10.0},
      "Gheekanta": {"time": 40.0, "fare": 15.0},
      "Kalupur Railway Station": {"time": 40.0, "fare": 15.0},
      "Kankaria East": {"time": 40.0, "fare": 15.0},
      "Apparel Park": {"time": 40.0, "fare": 20.0},
      "Amraiwadi": {"time": 40.0, "fare": 20.0},
      "Rabari Colony": {"time": 40.0, "fare": 20.0},
      "NIrant Cross Road": {"time": 40.0, "fare": 25.0},
      "Vastral": {"time": 40.0, "fare": 20.0},
      "Vastral Gam": {"time": 40.0, "fare": 25.0}
    },

    "Doordarshan Kendra": {
      "Thaltej Gam": {"time": 40.0, "fare": 5.0},
      "Thaltej": {"time": 40.0, "fare": 5.0},
      "Gurukul Road": {"time": 40.0, "fare": 5.0},
      "Gujarat University": {"time": 40.0, "fare": 5.0},
      "Commerce Six Road": {"time": 40.0, "fare": 10.0},
      "SP Stadium": {"time": 40.0, "fare": 10.0},
      "Old High Court": {"time": 40.0, "fare": 10.0},
      "Shahpur": {"time": 40.0, "fare": 10.0},
      "Gheekanta": {"time": 40.0, "fare": 15.0},
      "Kalupur Railway Station": {"time": 40.0, "fare": 15.0},
      "Kankaria East": {"time": 40.0, "fare": 15.0},
      "Apparel Park": {"time": 40.0, "fare": 20.0},
      "Amraiwadi": {"time": 40.0, "fare": 20.0},
      "Rabari Colony": {"time": 40.0, "fare": 20.0},
      "NIrant Cross Road": {"time": 40.0, "fare": 25.0},
      "Vastral": {"time": 40.0, "fare": 20.0},
      "Vastral Gam": {"time": 40.0, "fare": 25.0}
    },

    'Gurukul Road': {
      'Thaltej Gam': {'time': 40.0, 'fare': 10.0},
      'Thaltej': {'time': 40.0, 'fare': 5.0},
      'Doordarshan Kendra': {'time': 40.0, 'fare': 5.0},
      'Gujarat University': {'time': 40.0, 'fare': 5.0},
      'Commerce Six Road': {'time': 40.0, 'fare': 5.0},
      'SP Stadium': {'time': 40.0, 'fare': 10.0},
      'Old High Court': {'time': 40.0, 'fare': 10.0},
      'Shahpur': {'time': 40.0, 'fare': 10.0},
      'Gheekanta': {'time': 40.0, 'fare': 10.0},
      'Kalupur Railway Station': {'time': 40.0, 'fare': 15.0},
      'Kankaria East': {'time': 40.0, 'fare': 15.0},
      'Apparel Park': {'time': 40.0, 'fare': 20.0},
      'Amraiwadi': {'time': 40.0, 'fare': 20.0},
      'Rabari Colony': {'time': 40.0, 'fare': 20.0},
      'NIrant Cross Road': {'time': 40.0, 'fare': 20.0},
      'Vastral': {'time': 40.0, 'fare': 20.0},
      'Vastral Gam': {'time': 40.0, 'fare': 25.0}
    },

    'Gujarat University': {
      'Thaltej Gam': {'time': 40.0, 'fare': 10.0},
      'Thaltej': {'time': 40.0, 'fare': 10.0},
      'Doordarshan Kendra': {'time': 40.0, 'fare': 5.0},
      'Gurukul Road': {'time': 40.0, 'fare': 5.0},
      'Commerce Six Road': {'time': 40.0, 'fare': 5.0},
      'SP Stadium': {'time': 40.0, 'fare': 10.0},
      'Old High Court': {'time': 40.0, 'fare': 10.0},
      'Shahpur': {'time': 40.0, 'fare': 10.0},
      'Gheekanta': {'time': 40.0, 'fare': 10.0},
      'Kalupur Railway Station': {'time': 40.0, 'fare': 15.0},
      'Kankaria East': {'time': 40.0, 'fare': 15.0},
      'Apparel Park': {'time': 40.0, 'fare': 15.0},
      'Amraiwadi': {'time': 40.0, 'fare': 20.0},
      'Rabari Colony': {'time': 40.0, 'fare': 20.0},
      'NIrant Cross Road': {'time': 40.0, 'fare': 20.0},
      'Vastral': {'time': 40.0, 'fare': 20.0},
      'Vastral Gam': {'time': 40.0, 'fare': 25.0}
    },

    'Commerce Six Road': {
      'Thaltej Gam': {'time': 40.0, 'fare': 10.0},
      'Thaltej': {'time': 40.0, 'fare': 10.0},
      'Doordarshan Kendra': {'time': 40.0, 'fare': 10.0},
      'Gurukul Road': {'time': 40.0, 'fare': 5.0},
      'Gujarat University': {'time': 40.0, 'fare': 5.0},
      'SP Stadium': {'time': 40.0, 'fare': 10.0},
      'Old High Court': {'time': 40.0, 'fare': 10.0},
      'Shahpur': {'time': 40.0, 'fare': 10.0},
      'Gheekanta': {'time': 40.0, 'fare': 10.0},
      'Kalupur Railway Station': {'time': 40.0, 'fare': 10.0},
      'Kankaria East': {'time': 40.0, 'fare': 15.0},
      'Apparel Park': {'time': 40.0, 'fare': 15.0},
      'Amraiwadi': {'time': 40.0, 'fare': 15.0},
      'Rabari Colony': {'time': 40.0, 'fare': 20.0},
      'NIrant Cross Road': {'time': 40.0, 'fare': 20.0},
      'Vastral': {'time': 40.0, 'fare': 20.0},
      'Vastral Gam': {'time': 40.0, 'fare': 25.0}
    },

    'SP Stadium': {
      'Thaltej Gam': {'time': 40.0, 'fare': 10.0},
      'Thaltej': {'time': 40.0, 'fare': 10.0},
      'Doordarshan Kendra': {'time': 40.0, 'fare': 10.0},
      'Gurukul Road': {'time': 40.0, 'fare': 10.0},
      'Gujarat University': {'time': 40.0, 'fare': 10.0},
      'Commerce Six Road': {'time': 40.0, 'fare': 10.0},
      'Old High Court': {'time': 40.0, 'fare': 10.0},
      'Shahpur': {'time': 40.0, 'fare': 10.0},
      'Gheekanta': {'time': 40.0, 'fare': 10.0},
      'Kalupur Railway Station': {'time': 40.0, 'fare': 15.0},
      'Kankaria East': {'time': 40.0, 'fare': 15.0},
      'Apparel Park': {'time': 40.0, 'fare': 15.0},
      'Amraiwadi': {'time': 40.0, 'fare': 15.0},
      'Rabari Colony': {'time': 40.0, 'fare': 15.0},
      'NIrant Cross Road': {'time': 40.0, 'fare': 20.0},
      'Vastral': {'time': 40.0, 'fare': 20.0},
      'Vastral Gam': {'time': 40.0, 'fare': 25.0}
    },

    'Shahpur': {
      'Thaltej Gam': {'time': 40.0, 'fare': 15.0},
      'Thaltej': {'time': 40.0, 'fare': 10.0},
      'Doordarshan Kendra': {'time': 40.0, 'fare': 10.0},
      'Gurukul Road': {'time': 40.0, 'fare': 10.0},
      'Gujarat University': {'time': 40.0, 'fare': 10.0},
      'Commerce Six Road': {'time': 40.0, 'fare': 10.0},
      'SP Stadium': {'time': 40.0, 'fare': 10.0},
      'Old High Court': {'time': 40.0, 'fare': 5.0},
      'Gheekanta': {'time': 40.0, 'fare': 5.0},
      'Kalupur Railway Station': {'time': 40.0, 'fare': 5.0},
      'Kankaria East': {'time': 40.0, 'fare': 10.0},
      'Apparel Park': {'time': 40.0, 'fare': 10.0},
      'Amraiwadi': {'time': 40.0, 'fare': 15.0},
      'Rabari Colony': {'time': 40.0, 'fare': 15.0},
      'NIrant Cross Road': {'time': 40.0, 'fare': 20.0},
      'Vastral': {'time': 40.0, 'fare': 20.0},
      'Vastral Gam': {'time': 40.0, 'fare': 25.0}
    },

    'Gheekanta': {
      'Thaltej Gam': {'time': 40.0, 'fare': 15.0},
      'Thaltej': {'time': 40.0, 'fare': 15.0},
      'Doordarshan Kendra': {'time': 40.0, 'fare': 15.0},
      'Gurukul Road': {'time': 40.0, 'fare': 10.0},
      'Gujarat University': {'time': 40.0, 'fare': 10.0},
      'Commerce Six Road': {'time': 40.0, 'fare': 10.0},
      'SP Stadium': {'time': 40.0, 'fare': 10.0},
      'Old High Court': {'time': 40.0, 'fare': 5.0},
      'Shahpur': {'time': 40.0, 'fare': 5.0},
      'Kalupur Railway Station': {'time': 40.0, 'fare': 10.0},
      'Kankaria East': {'time': 40.0, 'fare': 15.0},
      'Apparel Park': {'time': 40.0, 'fare': 15.0},
      'Amraiwadi': {'time': 40.0, 'fare': 15.0},
      'Rabari Colony': {'time': 40.0, 'fare': 20.0},
      'NIrant Cross Road': {'time': 40.0, 'fare': 20.0},
      'Vastral': {'time': 40.0, 'fare': 20.0},
      'Vastral Gam': {'time': 40.0, 'fare': 25.0}
    },

    'Kalupur Railway Station': {
      'Thaltej Gam': {'time': 40.0, 'fare': 20.0},
      'Thaltej': {'time': 40.0, 'fare': 15.0},
      'Doordarshan Kendra': {'time': 40.0, 'fare': 15.0},
      'Gurukul Road': {'time': 40.0, 'fare': 15.0},
      'Gujarat University': {'time': 40.0, 'fare': 15.0},
      'Commerce Six Road': {'time': 40.0, 'fare': 15.0},
      'SP Stadium': {'time': 40.0, 'fare': 15.0},
      'Old High Court': {'time': 40.0, 'fare': 10.0},
      'Shahpur': {'time': 40.0, 'fare': 10.0},
      'Gheekanta': {'time': 40.0, 'fare': 10.0},
      'Kankaria East': {'time': 40.0, 'fare': 5.0},
      'Apparel Park': {'time': 40.0, 'fare': 10.0},
      'Amraiwadi': {'time': 40.0, 'fare': 15.0},
      'Rabari Colony': {'time': 40.0, 'fare': 15.0},
      'NIrant Cross Road': {'time': 40.0, 'fare': 20.0},
      'Vastral': {'time': 40.0, 'fare': 20.0},
      'Vastral Gam': {'time': 40.0, 'fare': 25.0}
    },

    'Kankaria East': {
      'Thaltej Gam': {'time': 40.0, 'fare': 20.0},
      'Thaltej': {'time': 40.0, 'fare': 15.0},
      'Doordarshan Kendra': {'time': 40.0, 'fare': 15.0},
      'Gurukul Road': {'time': 40.0, 'fare': 15.0},
      'Gujarat University': {'time': 40.0, 'fare': 15.0},
      'Commerce Six Road': {'time': 40.0, 'fare': 15.0},
      'SP Stadium': {'time': 40.0, 'fare': 15.0},
      'Old High Court': {'time': 40.0, 'fare': 15.0},
      'Shahpur': {'time': 40.0, 'fare': 10.0},
      'Gheekanta': {'time': 40.0, 'fare': 15.0},
      'Kalupur Railway Station': {'time': 40.0, 'fare': 10.0},
      'Apparel Park': {'time': 40.0, 'fare': 10.0},
      'Amraiwadi': {'time': 40.0, 'fare': 10.0},
      'Rabari Colony': {'time': 40.0, 'fare': 10.0},
      'NIrant Cross Road': {'time': 40.0, 'fare': 15.0},
      'Vastral': {'time': 40.0, 'fare': 15.0},
      'Vastral Gam': {'time': 40.0, 'fare': 15.0}
    }
  };
  List<String> get stations => _stations;
  

  void setSourceStation(String station1) {
    _sourceStation = station1;
    notifyListeners();
  }

  void clearSourceStation() {
    _sourceStation = null;
    notifyListeners();
  }

  void clearDestinationStation() {
    _destinationStation = null;
    notifyListeners();
  }

  void setDestinationStation(String station2) {
    _destinationStation = station2;
    notifyListeners();
  }

  void clearAllStations() {
    _sourceStation = null;
    _destinationStation = null;
  }

  double calculateFare() {
    if (_sourceStation != null && _destinationStation != null) {
      return _stationData[_sourceStation]?[_destinationStation]?['fare'] ?? 0.0;
    }
    return 0.0;
  }

  int calculateTime() {
    if (_sourceStation != null && _destinationStation != null) {
      var time = _stationData[_sourceStation]?[_destinationStation]?['time'];
      return time is int ? time : (time as double).toInt();
    }
    return 0;
  }

 List<String> getBetweenStations() {
  if (_sourceStation == null || _destinationStation == null) {
    return [];
  }

  int sourceIndex = _stations.indexOf(_sourceStation!);
  int destinationIndex = _stations.indexOf(_destinationStation!);

  if (sourceIndex < destinationIndex) {
    return _stations.sublist(sourceIndex + 1, destinationIndex);
  } else {
    return _stations.sublist(destinationIndex, sourceIndex).reversed.toList();
  }
}


  
}
