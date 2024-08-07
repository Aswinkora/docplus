import 'package:docplus/webap/componentsweb/constweb.dart';
import 'package:flutter/material.dart';

class Pdetails extends StatefulWidget {
  const Pdetails({super.key});

  @override
  State<Pdetails> createState() => _PdetailsState();
}

class _PdetailsState extends State<Pdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('BOOK AN APPOINTMENT'),
          ),
        ),
        body: Column(children: [
          Container(
            color: websecond,
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height / 5.5,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    CircleAvatar(
                      radius: 40,
                    ),
                    Column(children: [
                      Text(
                        'Dr.Smith',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text('DENTISTRY')
                    ]),
                    Container(
                      color: Colors.amber,
                      width: 200,
                      child: Text('Time'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ]));
  }
}
