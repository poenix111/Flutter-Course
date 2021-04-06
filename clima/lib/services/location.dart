import 'package:clima/services/networking.dart';
import 'package:clima/utilities/constants.dart';
import 'package:location/location.dart';

class LocationMod {
  double latitude;
  double longitude;

  Future<void> getLocation() async {
    Location location = new Location();

    // bool _serviceEnabled;
    // PermissionStatus _permissionGranted;
    LocationData _locationData;
    // _serviceEnabled = await location.serviceEnabled();
    // if (!_serviceEnabled) {
    //   _serviceEnabled = await location.requestService();
    //   if (!_serviceEnabled) {
    //     return;
    //   }
    // }

    // _permissionGranted = await location.hasPermission();
    // if (_permissionGranted == PermissionStatus.denied) {
    //   _permissionGranted = await location.requestPermission();
    //   if (_permissionGranted != PermissionStatus.granted) {
    //     return;
    //   }
    // }
    try {
      _locationData = await location.getLocation();
      this.latitude = _locationData.latitude;
      this.longitude = _locationData.longitude;
    } catch (e) {
      print(e);
    }
  }

  String currentLocation() {
    return "Latitud: " +
        this.latitude.toString() +
        " Longitud: " +
        this.longitude.toString();
  }
}
