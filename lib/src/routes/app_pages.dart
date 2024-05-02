import 'package:get/get.dart';
import 'package:mobile_attendance/src/views/attendance/attendance_view.dart';
import 'package:mobile_attendance/src/views/input_name/input_name_view.dart';
import 'package:mobile_attendance/src/views/main_page/main_page_view.dart';
import 'package:mobile_attendance/src/views/startup/startup_view.dart';
import 'package:mobile_attendance/src/views/welcome/welcome_view.dart';

part 'app_routes.dart';

abstract class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.initialRoute,
      page: () => const StartupView(),
    ),
    GetPage(
      name: AppRoutes.welcomeRoute,
      page: () => const WelcomeView(),
    ),
    GetPage(
      name: AppRoutes.mainPageRoute,
      page: () => const MainPageView(),
    ),
    GetPage(
      name: AppRoutes.attendanceRoute,
      page: () => const AttendanceView(),
    ),
    GetPage(
      name: AppRoutes.inputNameRoute,
      page: () => const InputNameView(),
    ),
  ];
}
