// import 'package:docplus/screen/detail.dart';
// import 'package:docplus/screen/schedule.dart';
// import 'package:flutter/material.dart';

// class Appoinment extends StatefulWidget {
//   const Appoinment({super.key});

//   @override
//   State<Appoinment> createState() => _AppoinmentState();
// }

// class _AppoinmentState extends State<Appoinment>
//     with SingleTickerProviderStateMixin {
//   late TabController tabController;
//   @override
//   void initState() {
//     super.initState();
//     tabController = TabController(length: 2, vsync: this);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     tabController.dispose();

//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: SingleChildScrollView(
//           child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 30),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               child: Row(
//                 children: [
//                   CircleAvatar(
//                     radius: 30,
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Column(
//                     children: [
//                       Text(
//                         'Dr. Eion Morgan',
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       Text(
//                         'MBBS MD(Neurology)',
//                         style: TextStyle(color: Colors.grey[400]),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(height: 20,),
//             TabBar(tabs: [Tab(text: 'Schedule',),
//             Tab(text: 'Details&Review',)],
//             indicatorColor: Colors.blue,
//             labelColor: Colors.blue,
//             unselectedLabelColor: Colors.grey,),
//             SizedBox(height: 400,
//             child: TabBarView(
//               controller: tabController,
//               children: [
//                 ScheduleTab(),
//                 DetailsReview(),
//               ]),)

//           ],

//         ),

//       )),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:docplus/screen/detail.dart';
import 'package:docplus/screen/schedule.dart';

class Appoinment extends StatefulWidget {
  const Appoinment({super.key});

  @override
  State<Appoinment> createState() => _AppoinmentState();
}

class _AppoinmentState extends State<Appoinment>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Profile'),centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 45,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. Eion Morgan',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'MBBS MD(Neurology)',
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white, // Background color for the tab bar
              borderRadius: BorderRadius.circular(8),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: TabBar(
              controller: _tabController,
              tabs: [
                Tab(text: 'Schedule'),
                Tab(text: 'Details '),
              ],
              indicator: BoxDecoration(
                color: Colors.blue, // Color for the selected tab
                borderRadius: BorderRadius.circular(8),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey[200],
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
              labelPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ScheduleTab(),
                DetailsReview(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
