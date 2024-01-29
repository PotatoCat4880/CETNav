// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:fitness_app/pages/location.dart';
import 'package:flutter/material.dart';
import 'dart:async'; // Import for Timer

class DriverProfile2 extends StatefulWidget {
  @override
  State<DriverProfile2> createState() => _DriverProfileState();
}

class _DriverProfileState extends State<DriverProfile2> {
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
        backgroundColor: Color.fromARGB(255, 223, 190, 7),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(children: [
              // Welcome message with custom font and alignment
              Padding(
                padding: const EdgeInsets.only(bottom: 20), // Adjust spacing
                child: RichText(
                  textAlign: TextAlign.center, // Center alignment
                  text: TextSpan(
                    text: "WELCOME ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 8, 8, 8),
                      fontSize: 58, // Adjust size as needed
                      fontFamily:
                          "fonts/Poppins-Bold.ttf", // Replace with your font
                    ),
                    children: [
                      TextSpan(
                        text: "Driver1",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Columns below the welcome message
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(height: 40),
                    Icon(
                      Icons.face_retouching_natural_sharp,
                      color: Color.fromARGB(255, 0, 0, 0),
                      size: 160.0,
                    ),

                    //Start Button
                    GestureDetector(
                      // Your onTap action here
                      onTap: () {
                        Navigator.pushNamed(context, "/driver_profile");
                      },

                      child: Container(
                        child: Center(
                            child: Text(
                          "QUIT JOURNEY",
                          style: TextStyle(fontSize: 30),
                        )),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 241, 62, 62),
                        ),
                        height: 80,
                        width: 950,
                      ),
                    ),
                  ], //children
                ),
              ),
            ])));
  }
}
