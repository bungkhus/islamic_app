import 'package:fpdart/fpdart.dart';
import 'package:islamic_app/module/prayer_times/domain/models/prayer_time_model.dart';
import 'package:islamic_app/module/prayer_times/domain/use_case/base_prayer_times_daily_use_case.dart';
import 'package:islamic_app/module/prayer_times/infrastructure/repositories/prayer_times_daily_reposotory.dart';

class IslamPrayerTimesDailyUseCase extends BasePrayerTimesDailyUseCase {
  final PrayerTimesDailyReposotory repository;

  IslamPrayerTimesDailyUseCase(this.repository);
  
  @override
  Future<Either<String, PrayerTimes>> execute(double lat, double long) {
    return repository.getPrayerTimes(lat, long);
  }
}
