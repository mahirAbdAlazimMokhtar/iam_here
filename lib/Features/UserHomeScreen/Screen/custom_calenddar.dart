import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CustomCalendar extends StatelessWidget {
  const CustomCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      view: CalendarView.week,
      dataSource: TimeTable(getAppointments()),
    );
  }
}

List<Appointment> getAppointments() {
  List<Appointment> timeTable = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));

  timeTable.add(Appointment(
    startTime: startTime,
    endTime: endTime,
    subject: 'Al Giza',
    color: Colors.blueAccent,
    recurrenceRule: 'FREQ=DAILY;COUNT=4',

  ));

  return timeTable;
}

class TimeTable extends CalendarDataSource {
  TimeTable(List<Appointment> source) {
    appointments = source;
  }
}
