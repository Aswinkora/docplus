import 'package:flutter/material.dart';

class DoctorsDetailPage extends StatefulWidget {
  const DoctorsDetailPage({super.key});

  @override
  State<DoctorsDetailPage> createState() => _DoctorsDetailPageState();
}

class _DoctorsDetailPageState extends State<DoctorsDetailPage> {
  final List<Map<String, String>> doctors = [
    {
      "name": "Dr. Chloe Kelly",
      "specialty": "M.Ch(Neuro)",
      // "rating": "4.5",
      "reviews": "2530",
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Dr. John Doe",
      "specialty": "Cardiologist",
      // "rating": "4.8",
      "reviews": "1987",
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Dr. Jane Smith",
      "specialty": "Orthopedist",
      // "rating": "4.7",
      "reviews": "2210",
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Dr. Alex Brown",
      "specialty": "Pathologist",
      // "rating": "4.6",
      "reviews": "1734",
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Dr. Emma Green",
      "specialty": "Dermatologist",
      // "rating": "4.9",
      "reviews": "2421",
      "image": "https://via.placeholder.com/150"
    },
     {
      "name": "Dr. Jane Smith",
      "specialty": "Orthopedist",
      // "rating": "4.7",
      "reviews": "2210",
      "image": "https://via.placeholder.com/150"
    },
     {
      "name": "Dr. John Doe",
      "specialty": "Cardiologist",
      // "rating": "4.8",
      "reviews": "1987",
      "image": "https://via.placeholder.com/150"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popular Doctors",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: doctors.length,
          itemBuilder: (context, index) {
            final doctor = doctors[index];
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(doctor["image"]!),
                      radius: 40,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            doctor["name"]!,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            doctor["specialty"]!,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                          Row(
                            children: [
                              // Icon(Icons.star, color: Colors.yellow,size: 20,),
                              Text(" (${doctor["reviews"]} reviews)"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.push_pin_outlined),
                      onPressed: () {
                        // Handle pinning functionality here
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
