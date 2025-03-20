import 'package:islamic_app/module/prayer_times/domain/models/prayer_time_model.dart';

abstract class IPrayerTimesDailyRemoteDataSource {
  Future<PrayerTimes> getPrayerTimes(double lat, double long);
}