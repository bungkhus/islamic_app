import 'package:fpdart/fpdart.dart';
import 'package:islamic_app/module/prayer_times/domain/models/prayer_time_model.dart';

abstract class BasePrayerTimesDailyUseCase {
  Future<Either<String, PrayerTimes>> execute(double lat, double long);
}