// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LiveLocationPage extends StatefulWidget {
  @override
  State<LiveLocationPage> createState() => _LiveLocationPageState();
}

class _LiveLocationPageState extends State<LiveLocationPage> {
  // const LiveLocationPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Live Location"),
        backgroundColor: Color.fromARGB(255, 254, 242, 209),
      ),
      backgroundColor: Color.fromARGB(255, 232, 179, 22),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 218, 218, 218),
        child: ListView(
          children: [
            DrawerHeader(
                child: Icon(
              Icons.location_history,
              size: 160,
              color: Color.fromARGB(255, 32, 32, 32),
            )),
            Container(
                height: 40,
                color: Color.fromARGB(255, 242, 242, 242),
                child: Center(
                    child: Text(
                  "MENU BAR",
                  style: TextStyle(fontSize: 30),
                ))),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/home");
              },
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: const Color.fromARGB(255, 21, 21, 21),
                ),
                title: Text("HOME"),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/student_livelocation");
              },
              child: ListTile(
                leading: Icon(
                  Icons.location_pin,
                  color: const Color.fromARGB(255, 222, 23, 23),
                ),
                title: Text("LIVE LOCATION"),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          // 1st column
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              child: Center(child: Text("Thampanoor")),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 231, 235, 235),
              ),
              height: 80,
              width: 950,
            ),
          ),
          // 2st column
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              child: Center(child: Text("Vattiyoorkavu")),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 231, 235, 235),
              ),
              height: 80,
              width: 950,
            ),
          ),
          // 3st column
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              child: Center(child: Text("Mannarakonam")),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 231, 235, 235),
              ),
              height: 80,
              width: 950,
            ),
          ),
          // 4st column
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              child: Center(child: Text("Peroorkada")),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 231, 235, 235),
              ),
              height: 80,
              width: 950,
            ),
          ),
          // 5st column
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              child: Center(child: Text("Pattom")),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 231, 235, 235),
              ),
              height: 80,
              width: 950,
            ),
          ),
          // 6st column
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              child: Center(child: Text("Medical College")),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 231, 235, 235),
              ),
              height: 80,
              width: 950,
            ),
          ),
          // 7st column
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              child: Center(child: Text("Sreekaryam")),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 231, 235, 235),
              ),
              height: 80,
              width: 950,
            ),
          ),
          // 8st column
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              child: Center(child: Text("Chavadimukku")),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 231, 235, 235),
              ),
              height: 80,
              width: 950,
            ),
          ),
          // 8st column
          Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                child: Center(child: Text("Ambadi Nagar")),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 231, 235, 235),
                ),
                height: 80,
                width: 950,
              )),
          // 9st column
          Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                child: Center(child: Text("CET")),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 231, 235, 235),
                ),
                height: 80,
                width: 950,
              ))
        ], //children
      ),
    );
  }
}
