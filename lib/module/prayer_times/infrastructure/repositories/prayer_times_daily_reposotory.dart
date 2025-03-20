import 'package:fpdart/fpdart.dart';
import 'package:islamic_app/module/prayer_times/domain/interfaces/i_prayer_times_daily_reposotory.dart';
import 'package:islamic_app/module/prayer_times/domain/models/prayer_time_model.dart';
import 'package:islamic_app/module/prayer_times/infrastructure/data_sources/prayer_times_daily_locale_data_source.dart';
import 'package:islamic_app/module/prayer_times/infrastructure/data_sources/prayer_times_daily_remote_data_source.dart';

class PrayerTimesDailyReposotory implements IPrayerTimesDailyReposotory {
  final PrayerTimesDailyRemoteDataSource remoteDataSource;
  final PrayerTimesDailyLocaleDataSource localDataSource;

  PrayerTimesDailyReposotory({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<String, PrayerTimes>> getPrayerTimes(double lat, double long) async {
    try {
      // 1️⃣ Coba ambil dari cache dulu
      // final cachedData = await localDataSource.getCachedPrayerTimes(lat, long);
      // if (cachedData != null) {
      //   return Right(cachedData);
      // }

      // 2️⃣ Jika tidak ada, ambil dari API
      final remoteData = await remoteDataSource.getPrayerTimes(lat, long);

      // 3️⃣ Simpan ke cache
      // await localDataSource.cachePrayerTimes(remoteData, lat, long);

      return Right(remoteData);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
