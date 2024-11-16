import 'package:holiday_id/holiday_id.dart';

class HolidayId {
  bool isHoliday(DateTime date) {
    return true;
  }

  static List<HolidayModel> getHolidays({
    int? filterYear,
    HolidayType? filterType,
  }) {
    var result = holidayIdData;
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
