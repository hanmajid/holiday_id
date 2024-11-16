# holiday_id

[![pub package](https://img.shields.io/pub/v/holiday_id.svg)](https://pub.dev/packages/holiday_id)

Flutter package that contains the information of Indonesia's national holidays and days-off.

## Installation

Add `holiday_id` dependency to your Flutter project:

```yaml
dependencies:
  holiday_id: ^<latest-version>
```

## Usage

Import the package in your Flutter file and call `getHolidays` method:

```dart
import 'package:holiday_id/holiday_id.dart';

void main() {
    var holidayIn2025 = HolidayId().getHolidays(
        filterType: HolidayType.holiday,
        filterYear: 2025,
    );
}
```

## Issues

For issues, file directly in the [repository](https://github.com/hanmajid/holiday_id/issues).

## Find this library useful? ❤️

Support it by joining __[stargazers](https://github.com/hanmajid/holiday_id/stargazers)__ for this repository. ⭐️ <br>
Also, __[follow me](https://github.com/hanmajid)__ on GitHub for my next project! 🤩

## License

```xml
Copyright 2024 hanmajid (Muhammad Farhan Majid)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```