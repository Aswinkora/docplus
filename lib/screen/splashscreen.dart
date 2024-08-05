import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: Splashscreen(),debugShowCheckedModeBanner: false,));
}

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(45.0),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50), 
            Center(
              child: Container(
                width: 300, 
                height: 300, 
                child: Image.asset("images/logo2.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Text(
                'A Digitaly Convenient\nModern Healthcare System', // Add your desired text here
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18, 
                  fontWeight: FontWeight.bold, 
                ),
              ),
            ),SizedBox(height: 280,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 81), backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: const Color.fromARGB(255, 62, 136, 201),), // Border color
                  ),
                ),
                child: Text(
                  'GET START',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 62, 136, 201), // Text color
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
