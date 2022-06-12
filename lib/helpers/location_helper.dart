import 'dart:convert';

import 'package:http/http.dart' as http;
const GOOOGLE_API_KEY ="AIzaSyB3XlnCvyidtcvE3lyx_NYZuI9CPNaKE1Y";

class LocationHelper{
  static String generateLocationPreview({double lattitude, double longitude}){
    return "https://maps.googleapis.com/maps/api/staticmap?center=$lattitude,$longitude&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C$lattitude,$longitude&key=$GOOOGLE_API_KEY";
  }
  static Future<String> getPlaceAddress(double lat, double lng)async {
    final  url = Uri.parse("https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$GOOOGLE_API_KEY");
    final response = await http.get(url);
    return json.decode(response.body)['results'][0]['formatted_address'];
  }  
}