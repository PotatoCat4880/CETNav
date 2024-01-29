import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
            //boxShadow: [BoxShadow(color: Color(0xff101617).withOpacity(0.11))],
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Color.fromARGB(255, 62, 64, 64),
          Color.fromARGB(255, 118, 122, 122),
          Color.fromARGB(255, 100, 90, 90),
        ])),
        child: Column(
          // Add child property for Column
          children: [
            SizedBox(
              width: double.infinity, // Set a width (e.g., to fill parent)
              height: 350,
              child: Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            // Enclose children in brackets
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Enter your email address',
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ), // Placeholder text
              ),
            ),
            SizedBox(height: 50),
            TextField(
              obscureText: true, // Hide password input
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Enter your password',
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
