// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
//import 'login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 190, 7),
      appBar: AppBar(
          elevation: 0,
          title: Text(
            "HOME PAGE",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          )),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 280,
              height: 350,
              margin: EdgeInsets.only(top: 70),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 231, 235, 235),
                borderRadius: BorderRadius.circular(10),
              ),
              // Add child elements here
              child: InkWell(
                onTap: () {
                  // Handle tap on bus icon
                  Navigator.pushNamed(context, "/bus_route_screen");
                },
                child: Icon(
                  Icons.bus_alert_rounded,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 140.0,
                ),
              ),
            ),

            Container(
              width: 280,
              height: 180,
              margin: EdgeInsets.only(top: 60),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 231, 235, 235),
                borderRadius: BorderRadius.circular(10),
              ),
              // Add child elements here

              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/driver_profile");
                },
                child: Icon(
                  Icons.location_history,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 120.0,
                ),
              ),
            )

            // Add other widgets as needed
          ],
        ),
      ),
    );
  }
}
