import 'package:fpdart/fpdart.dart';
import '../models/prayer_time_model.dart';

abstract class IPrayerTimesDailyReposotory {
  Future<Either<String, PrayerTimes>> getPrayerTimes(double lat, double long);
}