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
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            'BOOK AN APPOINTMENT',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                color: websecond,
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () {},
                        ),
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(
                              'images/logo.jpeg'), // Assuming you have a doctor image in assets
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr. LAKSHMI A',
                              style: TextStyle(
                                fontSize: 20,
                                color: webprimary,
                              ),
                            ),
                            Text(
                              'E.N.T',
                              style: TextStyle(
                                color: webprimary,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text(
                              'Wed, Aug 07',
                              style: TextStyle(
                                color: Colors.blueGrey,
                              ),
                            ),
                            Text(
                              '04:53 pm',
                              style: TextStyle(
                                color: Colors.blueGrey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Text(
                              'Fee',
                              style: TextStyle(
                                color: Colors.blueGrey,
                              ),
                            ),
                            Text(
                              '₹300',
                              style: TextStyle(
                                color: Colors.blueGrey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Patient Details",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Enter full UHID/MRID/OP Number or Mobile Number to proceed.",
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.search)),
                                  border: OutlineInputBorder(),
                                  labelText: "Type here",
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(width: 10),
                          // IconButton(
                          //   onPressed: () {},
                          //   icon: Icon(Icons.search),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // Divider(),
              Container(
                padding: EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "New Patients Register Here & Proceed",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Name *',
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Mobile number *',
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Age',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 350,
                        child: Row(
                          children: [
                            Text('Gender'),
                            Expanded(
                              child: ListTile(
                                title: Text('Male'),
                                leading: Radio(
                                  value: 'male',
                                  groupValue: 'gender',
                                  onChanged: (value) {},
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: Text('Female'),
                                leading: Radio(
                                  value: 'female',
                                  groupValue: 'gender',
                                  onChanged: (value) {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'BOOK',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13))),
                              fixedSize: WidgetStatePropertyAll(Size(344, 50)),
                              backgroundColor: WidgetStatePropertyAll(
                                  Color.fromARGB(255, 62, 136, 201))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "* DISCLAIMER: Kindly confirm the consultation fee displayed here, when you check in for your appointment.",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
