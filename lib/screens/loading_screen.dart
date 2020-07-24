import 'package:clima/services/weather.dart';
import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    // Extraemos la ubicación de la clase Weathermodel por medio del método
    // getLocationWeather y lo guardamos en weatherData
    var weatherData = await WeatherModel().getLocationWeather();

    // Cambiamos la pantalla a LocationScreem
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        //pasamos la variable weatherData al la nueva pantalla por medio
        // de la variable locatioWeather
        locationWeather: weatherData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SpinKitDoubleBounce(
        color: Colors.white,
        size: 100.0,
      )),
    );
  }
}
