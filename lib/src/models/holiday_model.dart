import 'package:holiday_id/holiday_id.dart';

/// This class contains the information of a holiday.
class HolidayModel {
  final String name;
  final DateTime date;
  final HolidayType type;

  const HolidayModel({
    required this.name,
    required this.date,
    required this.type,
  });
}
