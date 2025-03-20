import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:islamic_app/module/prayer_times/infrastructure/data_sources/prayer_times_daily_locale_data_source.dart';
import 'package:islamic_app/module/prayer_times/infrastructure/data_sources/prayer_times_daily_remote_data_source.dart';
import 'package:islamic_app/module/prayer_times/infrastructure/repositories/prayer_times_daily_reposotory.dart';
import 'package:islamic_app/pages/prayer_times_daily/presentation/islam_prayer_times_daily_controller.dart';
import 'package:islamic_app/pages/prayer_times_daily/presentation/islam_prayer_times_daily_use_case.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IslamPrayerTimesDailyBinding extends Bindings {
  @override
  void dependencies() {
    final prefs = Get.find<SharedPreferences>();
    final dio = Dio();
    final repository = PrayerTimesDailyReposotory(
      localDataSource: PrayerTimesDailyLocaleDataSource(prefs), 
      remoteDataSource: PrayerTimesDailyRemoteDataSource(dio)
    );
    final useCase = IslamPrayerTimesDailyUseCase(repository);

    Get.put(IslamPrayerTimesDailyController(useCase));
  }
}
