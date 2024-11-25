import 'package:flutter_test/flutter_test.dart';
import 'package:holiday_id/holiday_id.dart';
import 'package:intl/intl.dart';

void main() {
  group('SkbData 2023-2', () {
    test('should be correct (check weekday)', () {
      SkbModel skbData2023 = skbData2023_2;
      List<HolidayModel> holidays = skbData2023.holidays;
      List<HolidayModel> holidaysOnly = skbData2023.holidays
          .where((el) => el.type == HolidayType.holiday)
          .toList();
      List<HolidayModel> collectiveLeavesOnly = skbData2023.holidays
          .where((el) => el.type == HolidayType.collectiveLeave)
          .toList();

      expect(holidays.length, 25);
      expect(holidaysOnly.length, 16);
      expect(collectiveLeavesOnly.length, 9);

      var f = DateFormat.EEEE('en_us');
      expect(f.format(holidaysOnly[0].date), 'Sunday');
      expect(f.format(holidaysOnly[1].date), 'Sunday');
      expect(f.format(holidaysOnly[2].date), 'Saturday');
      expect(f.format(holidaysOnly[3].date), 'Wednesday');
      expect(f.format(holidaysOnly[4].date), 'Friday');
      expect(f.format(holidaysOnly[5].date), 'Saturday');
      expect(f.format(holidaysOnly[6].date), 'Sunday');
      expect(f.format(holidaysOnly[7].date), 'Monday');
      expect(f.format(holidaysOnly[8].date), 'Thursday');
      expect(f.format(holidaysOnly[9].date), 'Thursday');
      expect(f.format(holidaysOnly[10].date), 'Sunday');
      expect(f.format(holidaysOnly[11].date), 'Thursday');
      expect(f.format(holidaysOnly[12].date), 'Wednesday');
      expect(f.format(holidaysOnly[13].date), 'Thursday');
      expect(f.format(holidaysOnly[14].date), 'Thursday');
      expect(f.format(holidaysOnly[15].date), 'Monday');

      expect(f.format(collectiveLeavesOnly[0].date), 'Monday');
      expect(f.format(collectiveLeavesOnly[1].date), 'Thursday');
      expect(f.format(collectiveLeavesOnly[2].date), 'Wednesday');
      expect(f.format(collectiveLeavesOnly[3].date), 'Thursday');
      expect(f.format(collectiveLeavesOnly[4].date), 'Friday');
      expect(f.format(collectiveLeavesOnly[5].date), 'Monday');
      expect(f.format(collectiveLeavesOnly[6].date), 'Tuesday');
      expect(f.format(collectiveLeavesOnly[7].date), 'Friday');
      expect(f.format(collectiveLeavesOnly[8].date), 'Tuesday');
    });
    test('should have ascending ordered', () {
      SkbModel skbData2023 = skbData2023_2;
      List<HolidayModel> holidays = skbData2023.holidays;

      for (var i = 1; i < holidays.length; i++) {
        var prevHoliday = holidays[i - 1];
        var holiday = holidays[i];
        expect(prevHoliday.date.isBefore(holiday.date), true);
      }
    });
  });
}
