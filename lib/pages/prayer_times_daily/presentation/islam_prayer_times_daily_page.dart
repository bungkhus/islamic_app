import 'package:flutter/material.dart';
import 'package:islamic_app/module/prayer_times/presentation/views/daily_view/prayer_times_daily_view.dart';
import 'package:islamic_app/pages/prayer_times_daily/presentation/islam_prayer_times_daily_controller.dart';

class IslamPrayerTimesDailyPage extends StatelessWidget {
  const IslamPrayerTimesDailyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PrayerTimesDailyView<IslamPrayerTimesDailyController>(
      appBar: AppBar(title: Text("Prayer Time"),),
    );
  }
}