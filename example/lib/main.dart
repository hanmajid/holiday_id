import 'package:flutter/material.dart';
import 'package:holiday_id/holiday_id.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late List<HolidayModel> _holidays;
  late DateFormat _f;

  @override
  void initState() {
    super.initState();

    _holidays = HolidayId().getHolidays();
    _f = DateFormat.yMMMMEEEEd();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemBuilder: (context, index) {
            var holiday = _holidays[index];
            return ListTile(
              title: Text(holiday.name),
              leading: holiday.type == HolidayType.collectiveLeave
                  ? const Icon(Icons.group)
                  : null,
              subtitle: Text(_f.format(holiday.date)),
            );
          },
          itemCount: _holidays.length,
        ),
      ),
    );
  }
}
