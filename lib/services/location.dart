import 'package:geolocator/geolocator.dart';

// con esta clase capturamos nuestra geolocalizaciòn mediante el paquete Geolocator obtenemos nuestra latitud y longitude

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
