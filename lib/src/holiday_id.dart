import 'package:holiday_id/holiday_id.dart';

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
