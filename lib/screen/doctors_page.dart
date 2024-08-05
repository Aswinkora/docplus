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
          child: Column(
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
                        radius: 30, // Adjust the radius as needed
                      ),
                      SizedBox(
                          width: 10), // Add some space between the avatar and text
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome Back",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Mr. Williamson",
                              style: TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                          ]),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          // Add search functionality here
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.notifications),
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
                  viewportFraction: 0.8,
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
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
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
                children: [
                  Text("Find your doctor"),
                  Spacer(),
                  Text("See All >"),
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
                          color: Colors.blue,
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
                          color: Colors.blue,
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
                          color: Colors.blue,
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
                          color: Colors.blue,
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
                    children: [
                      Text("Popular Doctors"),SizedBox(width: 160,),
                      Text("See All >")
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Chloe Kelly"),SizedBox(width: 100,),
                              Text("Fees 50.99")
                            ],
                          ),
                          Text("M.Ch(Neuro)"),
                          Row(
                            children: [
                              Icon(Icons.star),
                              Row(
                                children: [
                                  Text("4.5(2530)"),SizedBox(width: 60,),
                                  ElevatedButton(onPressed: (){}, child: Text("Book Now"))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Chloe Kelly"),SizedBox(width: 100,),
                              Text("Fees 50.99")
                            ],
                          ),
                          Text("M.Ch(Neuro)"),
                          Row(
                            children: [
                              Icon(Icons.star),
                              Row(
                                children: [
                                  Text("4.5(2530)"),SizedBox(width: 60,),
                                  ElevatedButton(onPressed: (){}, child: Text("Book Now"))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      
                    ],
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
