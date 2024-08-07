import 'package:docplus/logos/logos.dart';
import 'package:docplus/webap/componentsweb/constweb.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BookAppointment(),
    debugShowCheckedModeBanner: false,
  ));
}

class BookAppointment extends StatefulWidget {
  const BookAppointment({super.key});

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(Icons.home, size: 30, color: Colors.blue),
      //     ),
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'images/webimage.png', // Replace with your image path
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 100),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Take appointments seamlessly',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 30),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 15, left: 15),
                                  child: StepIndicator(step: '01', label: 'Select doctor'),
                                ),
                                StepIndicator(step: '02', label: 'Choose date & time'),
                                StepIndicator(step: '03', label: 'Enter details & book'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: SizedBox(
                              width: 150, // Set desired width here
                              child: DropdownButtonFormField(
                                decoration: InputDecoration(
                                  labelText: 'Select Department',
                                  prefixIcon: Icon(Icons.search),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(13),
                                  ),
                                ),
                                items: [
                                  DropdownMenuItem(child: Text('All Departments'), value: 'all'),
                                  DropdownMenuItem(child: Text('Neurology'), value: 'neuro'),
                                  DropdownMenuItem(child: Text('Dentistry'), value: 'dentistry'),
                                  DropdownMenuItem(child: Text('Cardiology'), value: 'cardiology'),
                                ],
                                onChanged: (value) {},
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: SizedBox(
                              width: 150, // Set desired width here
                              child: DropdownButtonFormField(
                                decoration: InputDecoration(
                                  labelText: 'Select Doctor',
                                  prefixIcon: Icon(Icons.search),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(13),
                                  ),
                                ),
                                items: [
                                  DropdownMenuItem(child: Text('All Doctors'), value: 'all'),
                                  DropdownMenuItem(child: Text('Dr. John'), value: 'john'),
                                  DropdownMenuItem(child: Text('Dr. Asha'), value: 'asha'),
                                  DropdownMenuItem(child: Text('Dr. Smith'), value: 'smith'),
                                ],
                                onChanged: (value) {},
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(150, 40),
                        backgroundColor: Color.fromARGB(255, 62, 136, 201),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StepIndicator extends StatelessWidget {
  final String step;
  final String label;

  StepIndicator({required this.step, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blue,
            child: Text(
              step,
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(width: 8),
          Text(label),
        ],
      ),
    );
  }
}
