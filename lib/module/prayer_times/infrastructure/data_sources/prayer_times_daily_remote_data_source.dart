import 'package:dio/dio.dart';
import 'package:islamic_app/module/prayer_times/domain/interfaces/i_prayer_times_daily_remote_data_source.dart';
import 'package:islamic_app/module/prayer_times/domain/models/prayer_time_model.dart';

class PrayerTimesDailyRemoteDataSource implements IPrayerTimesDailyRemoteDataSource {
  final Dio dio;
  final String url;

  PrayerTimesDailyRemoteDataSource(this.dio, this.url);

  @override
  Future<PrayerTimes> getPrayerTimes(double lat, double long) async {
    final response = await dio.get(
      url,
      queryParameters: {'latitude': lat, 'longitude': long},
    );
    
    if (response.statusCode == 200) {
      var data = response.data['data'];
      Map<String, dynamic> timings = data['timings'];
      Map<String, dynamic> lowercasedPrayerTimes = timings.map(
        (key, value) => MapEntry(key.toLowerCase(), value),
      );
      print("[response] data: $lowercasedPrayerTimes");
      return PrayerTimes.fromJson(lowercasedPrayerTimes);
    } else {
      throw Exception('Failed to fetch prayer times');
    }
  }
}