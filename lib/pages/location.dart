// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:geocode/geocode.dart';
import 'package:location/location.dart';
import 'dart:async'; // Import for Timer

class GetUserLocation extends StatefulWidget {
  GetUserLocation({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _GetUserLocationState createState() => _GetUserLocationState();
}

class _GetUserLocationState extends State<GetUserLocation> {
  LocationData? currentLocation;
  String address = "";
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 3), (timer) => CallLocation());
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(),
    );
  }
}

Future<LocationData?> _getLocation() async {
  Location location = new Location();
  LocationData _locationData;

  bool _serviceEnabled;
  PermissionStatus _permissionGranted;

  _serviceEnabled = await location.serviceEnabled();
  if (!_serviceEnabled) {
    _serviceEnabled = await location.requestService();
    if (!_serviceEnabled) {
      return null;
    }
  }

  _permissionGranted = await location.hasPermission();
  if (_permissionGranted == PermissionStatus.denied) {
    _permissionGranted = await location.requestPermission();
    if (_permissionGranted != PermissionStatus.granted) {
      return null;
    }
  }

  _locationData = await location.getLocation();

  return _locationData;
}

Future<String> _getAddress(double? lat, double? lang) async {
  if (lat == null || lang == null) return "";
  GeoCode geoCode = GeoCode();
  Address address =
      await geoCode.reverseGeocoding(latitude: lat, longitude: lang);
  return "${address.streetAddress}, ${address.city}, ${address.countryName}, ${address.postal}";
}

void CallLocation() {
  {
    _getLocation().then((value) {
      LocationData? location = value;
      LocationData? currentLocation;
      print("Location: ${value?.latitude}, ${value?.longitude}");
      currentLocation = location;
    });
  }
}
