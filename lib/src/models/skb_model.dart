import 'package:holiday_id/holiday_id.dart';

/// This class contains a single SKB (Surat Keputusan Bersama) or Indonesia
/// government's official letter regarding national holiday.
///
/// Typically, you wouldn't use this class directly and only need to use
/// [HolidayModel].
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
