import 'package:docplus/webap/componentsweb/constweb.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PatientTime extends StatefulWidget {
  const PatientTime({super.key});

  @override
  State<PatientTime> createState() => _PatientTimeState();
}

class _PatientTimeState extends State<PatientTime> {
  DateTime selectdate = DateTime.now();

  Future<void> _selectdate(BuildContext context) async {
    final DateTime? pick = await showDatePicker(
        context: context, firstDate: DateTime(2024), lastDate: DateTime(2101));
    if (pick != null && pick != selectdate)
      setState(() {
        selectdate = pick;
      });
  }

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
      body: Column(
        children: [
          Container(
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
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text('Consultant date')),
              TextButton(
                  onPressed: () {
                    _selectdate(context);
                  },
                  child: Text(DateFormat('EEE, MMM dd').format(selectdate))),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13))),
                      fixedSize: WidgetStatePropertyAll(Size(110, 35)),
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 62, 136, 201))),
                  onPressed: () {},
                  child: Text(
                    'PROCEED',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ))
            ],
          ),
          SizedBox(height: 16),
          Text(
            'Available slots',
            style: TextStyle(color: webprimary),
          ),
          SizedBox(height: 16),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: List.generate(10, (index) {
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 0,
                  side: BorderSide(color: Colors.grey),
                  minimumSize: Size(80, 40),
                ),
                onPressed: () {},
                child: Text('${03 + index ~/ 2}:${40 + (index % 2) * 5} pm'),
              );
            }),
          ),
        ],
      ),
    );
  }
}
