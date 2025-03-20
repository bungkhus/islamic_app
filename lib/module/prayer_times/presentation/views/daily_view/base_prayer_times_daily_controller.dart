import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../domain/models/prayer_time_model.dart';

abstract class BasePrayerTimesDailyController extends GetxController {
  var prayerTimes = Rxn<PrayerTimes>();
  var errorMessage = RxnString();
  var isLoading = false.obs;

  void fetchPrayerTimes(double lat, double long);
}