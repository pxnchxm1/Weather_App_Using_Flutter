import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationProvider extends ChangeNotifier {
  Position? _currentPosition;
  Position? get currentPosition => _currentPosition;

  Future<void> determinePosition() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    LocationPermission permission = await Geolocator.checkPermission();

    if (serviceEnabled == false) {
      _currentPosition = null;
      notifyListeners();
      return;
    }

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        _currentPosition = null;
        notifyListeners();
        return;
      }
      if (permission == LocationPermission.deniedForever) {
        _currentPosition = null;
        notifyListeners();
        return;
      }

      _currentPosition = await Geolocator.getCurrentPosition();
      // ignore: avoid_print
      print(_currentPosition);
      notifyListeners();
    }
  }
}
