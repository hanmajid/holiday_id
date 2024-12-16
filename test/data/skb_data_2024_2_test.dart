import 'package:flutter_test/flutter_test.dart';
import 'package:holiday_id/holiday_id.dart';
import 'package:intl/intl.dart';

void main() {
  group('SkbData 2024-2', () {
    test('should be correct (check weekday)', () {
      SkbModel skbData2024 = skbData2024_2;
      List<HolidayModel> holidays = skbData2024.holidays;
      List<HolidayModel> holidaysOnly = skbData2024.holidays
          .where((el) => el.type == HolidayType.holiday)
          .toList();
      List<HolidayModel> collectiveLeavesOnly = skbData2024.holidays
          .where((el) => el.type == HolidayType.collectiveLeave)
          .toList();

      expect(holidays.length, 29);
      expect(holidaysOnly.length, 19);
      expect(collectiveLeavesOnly.length, 10);

      var f = DateFormat.EEEE('en_us');
      expect(f.format(holidaysOnly[0].date), 'Monday');
      expect(f.format(holidaysOnly[1].date), 'Thursday');
      expect(f.format(holidaysOnly[2].date), 'Saturday');
      expect(f.format(holidaysOnly[3].date), 'Wednesday');
      expect(f.format(holidaysOnly[4].date), 'Monday');
      expect(f.format(holidaysOnly[5].date), 'Friday');
      expect(f.format(holidaysOnly[6].date), 'Sunday');
      expect(f.format(holidaysOnly[7].date), 'Wednesday');
      expect(f.format(holidaysOnly[8].date), 'Thursday');
      expect(f.format(holidaysOnly[9].date), 'Wednesday');
      expect(f.format(holidaysOnly[10].date), 'Thursday');
      expect(f.format(holidaysOnly[11].date), 'Thursday');
      expect(f.format(holidaysOnly[12].date), 'Saturday');
      expect(f.format(holidaysOnly[13].date), 'Monday');
      expect(f.format(holidaysOnly[14].date), 'Sunday');
      expect(f.format(holidaysOnly[15].date), 'Saturday');
      expect(f.format(holidaysOnly[16].date), 'Monday');
      expect(f.format(holidaysOnly[17].date), 'Wednesday');
      expect(f.format(holidaysOnly[18].date), 'Wednesday');

      expect(f.format(collectiveLeavesOnly[0].date), 'Friday');
      expect(f.format(collectiveLeavesOnly[1].date), 'Tuesday');
      expect(f.format(collectiveLeavesOnly[2].date), 'Monday');
      expect(f.format(collectiveLeavesOnly[3].date), 'Tuesday');
      expect(f.format(collectiveLeavesOnly[4].date), 'Friday');
      expect(f.format(collectiveLeavesOnly[5].date), 'Monday');
      expect(f.format(collectiveLeavesOnly[6].date), 'Friday');
      expect(f.format(collectiveLeavesOnly[7].date), 'Friday');
      expect(f.format(collectiveLeavesOnly[8].date), 'Tuesday');
      expect(f.format(collectiveLeavesOnly[9].date), 'Thursday');
    });
    test('should have ascending ordered', () {
      SkbModel skbData2024 = skbData2024_2;
      List<HolidayModel> holidays = skbData2024.holidays;

      for (var i = 1; i < holidays.length; i++) {
        var prevHoliday = holidays[i - 1];
        var holiday = holidays[i];
        expect(prevHoliday.date.isBefore(holiday.date), true);
      }
    });
  });
}
