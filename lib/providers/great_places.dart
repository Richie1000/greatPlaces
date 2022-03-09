import 'dart:io';

import 'package:flutter/material.dart';

import '../models/place.dart';

class GreatPlaces with ChangeNotifier {
  List <Place> _items = [];

  List <Place> get items {
    return [..._items];
  }

  void addPlace(String Title, File image){
    final newPlace = Place(id: DateTime.now().toString(), title: Title, location: null, image: image);
    _items.add(newPlace);
    print("object added");
    notifyListeners();
  }
}