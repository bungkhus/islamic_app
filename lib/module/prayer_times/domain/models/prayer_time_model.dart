import 'package:freezed_annotation/freezed_annotation.dart';

part 'prayer_time_model.freezed.dart';
part 'prayer_time_model.g.dart';

@freezed
class PrayerTimes with _$PrayerTimes {
  const factory PrayerTimes({
    required String fajr,
    required String dhuhr,
    required String asr,
    required String maghrib,
    required String isha,
  }) = _PrayerTimes;

  factory PrayerTimes.fromJson(Map<String, dynamic> json) => _$PrayerTimesFromJson(json);
}
