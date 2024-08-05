import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class ScheduleTab extends StatefulWidget {
  const ScheduleTab({super.key});

  @override
  State<ScheduleTab> createState() => _ScheduleTabState();
}

class _ScheduleTabState extends State<ScheduleTab> {
  final List<String> months = [
    'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December'
  ];

  int selectedYear = DateTime.now().year;
  String selectedMonth = DateFormat('MMMM').format(DateTime.now());

  List<DateTime> _daysInMonth(int year, int month) {
    final firstDay = DateTime(year, month, 1);
    final lastDay = DateTime(year, month + 1, 0);
    return List.generate(lastDay.day, (index) => DateTime(year, month, index + 1));
  }

  @override
  Widget build(BuildContext context) {
    int monthIndex = months.indexOf(selectedMonth) + 1;
    List<DateTime> days = _daysInMonth(selectedYear, monthIndex);

    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton<String>(
                  value: selectedMonth,
                  items: months.map((String month) {
                    return DropdownMenuItem<String>(
                      value: month,
                      child: Text(month),
                    );
                  }).toList(),
                  onChanged: (String? newMonth) {
                    setState(() {
                      selectedMonth = newMonth!;
                    });
                  },
                ),
                DropdownButton<int>(
                  value: selectedYear,
                  items: List.generate(100, (index) => DateTime.now().year - 50 + index)
                      .map((int year) {
                    return DropdownMenuItem<int>(
                      value: year,
                      child: Text(year.toString()),
                    );
                  }).toList(),
                  onChanged: (int? newYear) {
                    setState(() {
                      selectedYear = newYear!;
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
            height: 60, // Adjust height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: days.length,
              itemBuilder: (context, index) {
                DateTime day = days[index];
                return DayWidget(day: day);
              },
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Add any other content you want to display below the calendar here
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Additional content goes here.'),
                  ),
                  // More content...
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DayWidget extends StatelessWidget {
  final DateTime day;

  DayWidget({required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0), // Decreased the margin to reduce space
      width: 40, // Optionally adjust the width
      height: 40, // Optionally adjust the height
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          '${day.day}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
