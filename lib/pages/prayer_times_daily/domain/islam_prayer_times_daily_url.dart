import 'package:islamic_app/module/prayer_times/domain/interfaces/i_prayer_times_daily_url.dart';
import 'package:islamic_app/urls.dart';

class IslamPrayerTimesDailyUrl extends IPrayerTimesDailyUrl {

  @override
  String get baseUrl => Urls.prayerTimeUrl;
}