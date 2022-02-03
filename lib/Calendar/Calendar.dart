import 'package:flutter/material.dart';
import 'package:project/Custom_widgets/roundedAppBar.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: RoundedAppBar('Calendar'),
          body: Center(
            child: Container(
              width: 350,
              height: 400,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1.0,
                ),
                color: Colors.white12,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TableCalendar(
                calendarFormat: _calendarFormat,
                selectedDayPredicate: (day){
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay){
                  if (!isSameDay(_selectedDay, selectedDay)){
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  }
                },
                onFormatChanged: (format){
                  if (_calendarFormat != format){
                    setState(() {
                      _calendarFormat = format;
                    });
                  }
                },
                calendarStyle: CalendarStyle(
                  todayDecoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  selectedDecoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  )
                ),
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
                startingDayOfWeek: StartingDayOfWeek.monday,
                headerStyle: HeaderStyle(
                  formatButtonShowsNext: false,
                  titleCentered: true,
                ),
              ),
            ),
          ),
        ),
    );
  }
}
