import 'package:islamic_app/module/prayer_times/presentation/views/daily_view/base_prayer_times_daily_controller.dart';
import 'package:islamic_app/pages/prayer_times_daily/presentation/islam_prayer_times_daily_use_case.dart';

class IslamPrayerTimesDailyController extends BasePrayerTimesDailyController {
  final IslamPrayerTimesDailyUseCase useCase;

  IslamPrayerTimesDailyController(this.useCase);

  @override
  void fetchPrayerTimes(double lat, double long) async {
    isLoading.value = true;
    errorMessage.value = null;

    final result = await useCase.execute(lat, long);

    result.match(
      (error) => errorMessage.value = error,
      (data) => prayerTimes.value = data,
    );

    isLoading.value = false;
  }
}
