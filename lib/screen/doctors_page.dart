import 'package:docplus/screen/detail.dart';
import 'package:docplus/screen/doctordetail.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: DoctorsPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class DoctorsPage extends StatefulWidget {
  const DoctorsPage({super.key});

  @override
  State<DoctorsPage> createState() => _DoctorsPageState();
}

class _DoctorsPageState extends State<DoctorsPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        backgroundImage: NetworkImage(
                            "https://www.shutterstock.com/image-photo/happy-beautiful-young-latin-doctor-woman-2389637807"),
                        radius: 20, // Adjust the radius as needed
                      ),
                      SizedBox(
                          width: 10), // Add some space between the avatar and text
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 1, top: 0, right: 10),
                              child: Text(
                                "Welcome Back",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                            Text(
                              "Mr. Williamson",
                              style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ]),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.search, size: 25),
                        onPressed: () {
                          // Add search functionality here
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.notifications, size: 25),
                        onPressed: () {
                          // Add notification functionality here
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1.0,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  "https://via.placeholder.com/350x150",
                  "https://via.placeholder.com/350x150",
                  "https://via.placeholder.com/350x150",
                  "https://via.placeholder.com/350x150",
                ].map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: 1000,
                        height: 1000,
                        margin: EdgeInsets.symmetric(horizontal: 1.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.amber,
                        ),
                        child: Image.network(item, fit: BoxFit.cover),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text("Find your doctor", style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Text("See All >", style: TextStyle(fontSize: 12)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Neurology"),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Cardiology"),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Orthopedics"),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Pathology"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Popular Doctors", style: TextStyle(fontWeight: FontWeight.bold)),
                      GestureDetector(onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorsDetailPage()));
                      },child: Text("See All >", style: TextStyle(fontSize: 12),)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Card(
                    child: Row(
                      children: [SizedBox(width: 10,),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Chloe Kelly", style: TextStyle(fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15,right: 5),
                                    child: Text("Fees 50.99", style: TextStyle(color: Colors.green)),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text("M.Ch(Neuro)", style: TextStyle(color: Colors.grey)),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow),
                                  SizedBox(width: 5),
                                  Text("4.5(2530)"),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 15,right: 5),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Book Now",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.green,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10), // Rectangle shape
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Card(
                    child: Row(
                      children: [SizedBox(width: 10,),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Chloe Kelly", style: TextStyle(fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15,right: 5),
                                    child: Text("Fees 50.99", style: TextStyle(color: Colors.green)),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text("M.Ch(Neuro)", style: TextStyle(color: Colors.grey)),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow),
                                  SizedBox(width: 5),
                                  Text("4.5(2530)"),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 15,right: 5),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Book Now",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.green,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10), // Rectangle shape
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Schedule',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
