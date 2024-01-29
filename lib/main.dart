// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, duplicate_ignore

import 'package:fitness_app/pages/bus_route_screen.dart';
import 'package:fitness_app/pages/drive_profile2.dart';
import 'package:fitness_app/pages/driver_profile.dart';
import 'package:fitness_app/pages/home.dart';
import 'package:fitness_app/pages/location.dart';
import 'package:fitness_app/pages/student_livelocation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: {
          '/driver_profile': (context) => DriverProfile(),
          '/driver_profile2': (context) => DriverProfile2(),
          "/home": (context) => HomePage(),
          "/bus_route_screen": (context) => BusRouteScreen(),
          "/location": (context) => GetUserLocation(
                title: "Location",
              ),
          "/student_livelocation": (context) => LiveLocationPage(),
        });
  }
}
