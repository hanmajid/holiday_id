import 'package:holiday_id/holiday_id.dart';

class SkbModel {
  final String id;
  final String title;
  final String url;
  final DateTime signedAt;
  final List<HolidayModel> holidays;

  const SkbModel({
    required this.id,
    required this.title,
    required this.url,
    required this.signedAt,
    required this.holidays,
  });
}
