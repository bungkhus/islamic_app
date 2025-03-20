import 'package:islamic_app/module/prayer_times/domain/models/prayer_time_model.dart';

abstract class IPrayerTimesDailyLocaleDataSource {
  Future<void> cachePrayerTimes(PrayerTimes model, double lat, double long);
  Future<PrayerTimes?> getCachedPrayerTimes(double lat, double long);
}