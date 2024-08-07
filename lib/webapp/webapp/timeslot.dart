import 'package:docplus/webapp/webapp/componentsweb/constweb.dart';
import 'package:flutter/material.dart';

class PatientTime extends StatefulWidget {
  const PatientTime({super.key});

  @override
  State<PatientTime> createState() => _PatientTimeState();
}

class _PatientTimeState extends State<PatientTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ))
        ],
        backgroundColor: webprimary,
        title: Center(
            child: Text(
          'BOOKAPPOINTMENT',
          style: TextStyle(fontSize: 20, color: Colors.white),
        )),
      ),
    );
  }
}