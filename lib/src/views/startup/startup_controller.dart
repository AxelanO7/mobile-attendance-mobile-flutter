import 'package:mobile_attendance/src/core/base_import.dart';

class StartupController extends BaseController {
  String nameUser = '';

  bool isBuildExpired() {
    DateTime nowDate = DateTime.now();
    DateTime expBuild = DateHelper.fromString(VersionConfig.expiredDate);
    return !(nowDate.isBefore(expBuild));
  }

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() async {
    if (isBuildExpired()) {
      super.onReady();
      return;
    }
    nameUser = await SettingsUtils.getString('name_user');
    if (nameUser.isNotEmpty) {
      Get.offNamed(AppRoutes.welcomeRoute);
    } else {
      Get.offNamed(AppRoutes.inputNameRoute);
    }
    super.onReady();
  }
}
