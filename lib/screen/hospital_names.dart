import 'package:docplus/screen/doctors_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: HospitalNames(),
    debugShowCheckedModeBanner: false,
  ));
}

class HospitalNames extends StatefulWidget {
  const HospitalNames({super.key});

  @override
  State<HospitalNames> createState() => _HospitalNamesState();
}

class _HospitalNamesState extends State<HospitalNames> {
  final List<String> hospitals = [
    'Amala',
    'Jubilee',
    'Mission',
    'City Hospital',
    'Green Valley Hospital',
    'Sunrise Medical Center'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hospitals',
          style: TextStyle(color: Colors.white),
        ),centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: hospitals.length,
        itemBuilder: (context, index) {
          return Container(
            height: 150,
            child: Card(
              elevation: 8,
              margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
              child: ListTile(
                title: Text(hospitals[index],style: const TextStyle(fontSize: 18,color: Colors.blueGrey),),
                trailing: const Icon(Icons.arrow_forward,color: Colors.blueGrey,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DoctorsPage(),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
