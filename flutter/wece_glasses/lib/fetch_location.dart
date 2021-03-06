import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:wece_glasses/globals.dart';

class UseLocation  {
  // Link to weather forecast
  final String forecast;

  UseLocation(this.forecast);

  UseLocation.fromJson(Map<String, dynamic> json)
      : forecast = json["properties"]["forecast"];

} // class Location

Future<String> fetchLocation() async {

  var currentLocation = await location.getLocation();

  final response = await http
      .get(Uri.parse("https://api.weather.gov/points/"+ currentLocation.latitude.toString() + "," + currentLocation.longitude.toString()));
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    UseLocation useLocation =  UseLocation.fromJson(jsonDecode(response.body));
    String link = useLocation.forecast;
    return link;

  } else {
    // If the server did not return a 200 OK response,
    // then return Urbana coordinates.
    // TODO alternative error handling
    return "https://api.weather.gov/gridpoints/TOP/40,88/forecast";
  }
}