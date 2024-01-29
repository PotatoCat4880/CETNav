import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 78, 78, 78),
      appBar: AppBar(
        title: Text("Select you location!"),
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
              child: Container(
                child: Center(child: Text("location name")),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 206, 204, 204),
                ),
                height: 80,
                width: 950,
              ),
            ),
            // 2st column
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                // ignore: sort_child_properties_last
                child: Center(child: Text("location name")),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 208, 207, 207),
                ),
                height: 80,
                width: 950,
              ),
            ),
          ], //children
        ),
      ),
    );
  }
}
