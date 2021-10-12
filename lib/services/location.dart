//import 'dart:ffi';

import 'package:geolocator/geolocator.dart';

class Location {
  double longitude;
  double lattitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      longitude = position.longitude;
      lattitude = position.latitude;
    } catch (e) {
      print(e);
    }
  }
}
