import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:islamic_app/module/prayer_times/domain/interfaces/i_prayer_times_daily_locale_data_source.dart';

import '../../domain/models/prayer_time_model.dart';

class PrayerTimesDailyLocaleDataSource implements IPrayerTimesDailyLocaleDataSource {
  final SharedPreferences sharedPreferences;

  PrayerTimesDailyLocaleDataSource(this.sharedPreferences);

  static const String cachedKey = 'DAILY_PRAYER_TIMES';

  @override
  Future<void> cachePrayerTimes(PrayerTimes model, double lat, double long) async {
    final data = {
      'lat': lat,
      'long': long,
      'date': DateTime.now().toIso8601String(),
      'times': model.toJson(),
    };
    await sharedPreferences.setString(cachedKey, jsonEncode(data));
  }

  @override
  Future<PrayerTimes?> getCachedPrayerTimes(double lat, double long) async {
    final jsonString = sharedPreferences.getString(cachedKey);
    if (jsonString != null) {
      final data = jsonDecode(jsonString);
      final cachedDate = DateTime.parse(data['date']);

      // Cek apakah cache masih valid (sama lokasi & tanggalnya)
      if (data['lat'] == lat && data['long'] == long && cachedDate.day == DateTime.now().day) {
        return PrayerTimes.fromJson(data['times']);
      }
    }
    return null;
  }
}