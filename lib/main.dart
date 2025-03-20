import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_app/pages/prayer_times_daily/presentation/islam_prayer_times_daily_binding.dart';
import 'package:islamic_app/pages/prayer_times_daily/presentation/islam_prayer_times_daily_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  Get.put<SharedPreferences>(prefs);
  
  runApp(
    GetMaterialApp(
      initialRoute: '/prayer_times',
      getPages: [
        GetPage(
          name: '/prayer_times',
          page: () => IslamPrayerTimesDailyPage(),
          binding: IslamPrayerTimesDailyBinding(),
        ),
      ]
    )
  );
}
