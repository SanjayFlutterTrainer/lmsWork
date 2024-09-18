import 'package:flutter/material.dart';
import 'package:lms/widgets/customBottomNavigationBar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart'; //

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  DateTime _selectedDay = DateTime.now();

  DateTime _focusedDay = DateTime.now();

  final Map<DateTime, List<Map<String, String>>> _events = {
    DateTime.utc(2024, 9, 18): [
      {
        'batchName': 'Avani Batch',
        'course': 'Flutter',
        'time': '10:00 AM - 12:00 PM'
      },
      {
        'batchName': 'Ajay Batch',
        'course': 'Flutter',
        'time': '12:00 PM - 2:00 PM'
      }
    ],
    DateTime.utc(2024, 9, 19): [
      {
        'batchName': 'Ann Batch',
        'course': 'Flutter',
        'time': '10:00 AM - 12:00 PM'
      },
      {
        'batchName': 'Dev Batch',
        'course': 'Flutter',
        'time': '12:00 PM - 2:00 PM'
      },
      {
        'batchName': 'Devdathan Batch',
        'course': 'Flutter',
        'time': '12:00 PM - 2:00 PM'
      }
    ],
    DateTime.utc(2024, 9, 20): [
      {
        'batchName': 'Archana Batch',
        'course': 'Flutter',
        'time': '10:00 AM - 12:00 PM'
      }
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar(
          focusedDay: _focusedDay,
          firstDay: DateTime(2020),
          lastDay: DateTime(2050),
          calendarFormat: CalendarFormat.week,
          selectedDayPredicate: (day) {
            return isSameDay(_selectedDay, day);
          },
          eventLoader: (day) => _events[day] ?? [],
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          },
          calendarStyle: CalendarStyle(
            markersMaxCount: 0,
            selectedDecoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            todayDecoration: BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.circle,
            ),
          ),
        ),
        SizedBox(height: 20),
        Expanded(
          child: _buildEventList(), // Build event list below the calendar
        ),
      ],
    );
  }

  Widget _buildEventList() {
    final events = _events[_selectedDay] ?? [];
    return ListView.builder(
      itemCount: events.length,
      itemBuilder: (context, index) {
        return Container(
          height: 160,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 237, 230, 230)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                events[index]["batchName"]!,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(events[index]["course"]!),
              Row(
                children: [
                  Icon(Icons.timer_sharp),
                  Text(events[index]["time"]!)
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
