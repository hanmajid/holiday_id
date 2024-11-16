import 'package:holiday_id/holiday_id.dart';

class HolidayModel {
  final String name;
  final DateTime date;
  final HolidayType type;

  const HolidayModel({
    required this.name,
    required this.date,
    required this.type,
  });

  @override
  String toString() {
    return {
      'name': name,
      'date': date,
      'type': type,
    }.toString();
  }
}
