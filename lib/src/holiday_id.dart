import 'package:holiday_id/holiday_id.dart';

/// This package's main class. Use this class to get access to Indonesia's
/// holiday data.
class HolidayId {
  List<HolidayModel> getHolidays({
    int? filterYear,
    HolidayType? filterType,
  }) {
    List<HolidayModel> result = [];
    result = holidayIdData
        .fold([], (prev, yearData) => prev + yearData.skbs.last.holidays);

    if (filterYear != null) {
      result =
          result.where((holiday) => holiday.date.year == filterYear).toList();
    }
    if (filterType != null) {
      result = result.where((holiday) => holiday.type == filterType).toList();
    }
    return result;
  }
}
