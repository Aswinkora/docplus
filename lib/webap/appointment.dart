import 'package:docplus/logos/logos.dart';
import 'package:docplus/webap/componentsweb/constweb.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class BookAppoinment extends StatefulWidget {
  const BookAppoinment({super.key});

  @override
  State<BookAppoinment> createState() => _BookAppoinmentState();
}

class _BookAppoinmentState extends State<BookAppoinment> {
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  color: websecond,
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/webimage.png'))),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: DropdownSearch(
                          dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                  labelText: 'select department',
                                  prefixIcon: Icon(Icons.search),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(13)))),
                          items: [
                            'ALL department',
                            'neuro',
                            'Dentistry',
                            'Cardiology',
                          ],
                        ),
                      ),
                      Expanded(
                        child: DropdownSearch(
                          dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                  labelText: 'select Doctor',
                                  prefixIcon: Icon(Icons.search),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(13)))),
                          items: [
                            'ALL doctors',
                            'Dr.jhon',
                            'Dr.ASHA',
                            'Dr.smith',
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13))),
                        fixedSize: WidgetStatePropertyAll(Size(150, 40)),
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 62, 136, 201))),
                    onPressed: () {},
                    child: Text(
                      'Next',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
