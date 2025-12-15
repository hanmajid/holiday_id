import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:holiday_id/holiday_id.dart';

void main() {
  group('HolidayId', () {
    group('getHolidays', () {
      test('should return all holidays', () {
        var holidays = HolidayId().getHolidays();

        var holidays2023 = yearData2023.skbs.last.holidays;
        var holidays2024 = yearData2024.skbs.last.holidays;
        var holidays2025 = yearData2025.skbs.last.holidays;
        var holidays2026 = yearData2026.skbs.last.holidays;
        var allHolidays = [
          ...holidays2023,
          ...holidays2024,
          ...holidays2025,
          ...holidays2026,
        ];

        expect(listEquals(holidays, allHolidays), true);
      });
      test('should return all holidays with filterType', () {
        var holidays = HolidayId().getHolidays(
          filterType: HolidayType.holiday,
        );

        var holidays2023 = yearData2023.skbs.last.holidays
            .where((day) => day.type == HolidayType.holiday)
            .toList();
        var holidays2024 = yearData2024.skbs.last.holidays
            .where((day) => day.type == HolidayType.holiday)
            .toList();
        var holidays2025 = yearData2025.skbs.last.holidays
            .where((day) => day.type == HolidayType.holiday)
            .toList();
        var holidays2026 = yearData2026.skbs.last.holidays
            .where((day) => day.type == HolidayType.holiday)
            .toList();
        var allHolidays = [
          ...holidays2023,
          ...holidays2024,
          ...holidays2025,
          ...holidays2026,
        ];

        expect(listEquals(holidays, allHolidays), true);
      });
      test('should return all holidays with filterYear', () {
        var holidays = HolidayId().getHolidays(
          filterYear: 2024,
        );

        var holidays2024 = yearData2024.skbs.last.holidays;
        var allHolidays = [
          ...holidays2024,
        ];

        expect(listEquals(holidays, allHolidays), true);
      });
      test('should return all holidays with filterType & filterYear', () {
        var holidays = HolidayId().getHolidays(
          filterType: HolidayType.collectiveLeave,
          filterYear: 2024,
        );

        var holidays2024 = yearData2024.skbs.last.holidays
            .where((day) => day.type == HolidayType.collectiveLeave)
            .toList();
        var allHolidays = [
          ...holidays2024,
        ];

        expect(listEquals(holidays, allHolidays), true);
      });
    });
  });
}
