import 'package:holiday_id/src/models/skb_model.dart';

class YearModel {
  final int year;
  final List<SkbModel> skbs;

  const YearModel({
    required this.year,
    required this.skbs,
  });
}
