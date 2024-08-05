import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Phoneverifiication(),
  ));
}

class Phoneverifiication extends StatefulWidget {
  const Phoneverifiication({super.key});

  @override
  State<Phoneverifiication> createState() => _PhoneverifiicationState();
}

class _PhoneverifiicationState extends State<Phoneverifiication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 40),
            Center(
              child: Container(
                padding: EdgeInsets.all(16),
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/backgrnd.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "VERIFY MOBILE",
              style: TextStyle(
                color:  const Color.fromARGB(255, 62, 136, 201),
                fontSize: 19,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              "Please Verify Your mobile number first\nfor registration",
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              height: 320,
              width: 320,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: Text("Mobile"),
                      suffixIcon: Icon(Icons.phone_android_outlined),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color:  const Color.fromARGB(255, 62, 136, 201),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_right, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 160),
                  Text(
                    "Login Here",
                    style: TextStyle(color:  const Color.fromARGB(255, 62, 136, 201),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
