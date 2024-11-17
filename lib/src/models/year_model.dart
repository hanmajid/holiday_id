import 'package:holiday_id/holiday_id.dart';

/// This class contains national holiday data of a single year.
///
/// Typically, you wouldn't use this class directly and only need to use
/// [HolidayModel].
class YearModel {
  final int year;
  final List<SkbModel> skbs;

  const YearModel({
    required this.year,
    required this.skbs,
  });
}
