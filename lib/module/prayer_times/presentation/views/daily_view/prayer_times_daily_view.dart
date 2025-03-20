import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_app/module/prayer_times/presentation/views/daily_view/base_prayer_times_daily_controller.dart';

class PrayerTimesDailyView<T extends BasePrayerTimesDailyController>
    extends GetView<T> {
  final PreferredSizeWidget? appBar;
  final Color primaryColor;

  const PrayerTimesDailyView({
    super.key,
    this.appBar,
    this.primaryColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      floatingActionButton: ElevatedButton(
        onPressed: () {
          controller.fetchPrayerTimes(-6.2088, 106.8456); // Contoh koordinat Jakarta
        },
        child: Text("Ambil Jadwal Sholat"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() {
            
            if (controller.isLoading.value) {
              return Center(child: CircularProgressIndicator());
            }
          
            if (controller.errorMessage.value != null) {
              return Center(
                child: Text(
                  "Error: ${controller.errorMessage.value}",
                  style: TextStyle(color: Colors.red),
                  textAlign: TextAlign.center,
                ),
              );
            }
          
            final data = controller.prayerTimes.value;
            if (data == null) {
              return Center(child: Text("Tekan tombol untuk mendapatkan jadwal sholat"));
            }
          
            return Center(
              child: Column(
                children: [
                  Text("Subuh: ${data.fajr}"),
                  Text("Dzuhur: ${data.dhuhr}"),
                  Text("Ashar: ${data.asr}"),
                  Text("Maghrib: ${data.maghrib}"),
                  Text("Isya: ${data.isha}"),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}