// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class BusRouteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 78, 78, 78),
      appBar: AppBar(
        title: Text("Select Route"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        child: ListView(
          children: [
            // 1st column
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: GestureDetector(
                onTap: () {
                  // selection and going to route A page
                  Navigator.pushNamed(context, "/student_livelocation");
                },
                child: Container(
                  child: Center(child: Text("Route A")),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 206, 204, 204),
                  ),
                  height: 80,
                  width: 950,
                ),
              ),
            ),
          ], //children
        ),
      ),
    );
  }
}
