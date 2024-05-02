import 'package:mobile_attendance/src/core/base_import.dart';

class InputNameController extends BaseController {
  bool canPop = true;

  TextEditingController nameController = TextEditingController();

  @override
  onInit() {
    super.onInit();
  }

  @override
  onReady() async {
    update();
    super.onReady();
  }

  @override
  onClose() async {
    super.onClose();
  }

  onGoBack() {
    Get.back();
  }

  onGetStarted() {
    Get.toNamed(AppRoutes.attendanceRoute);
  }

  saveName() {
    if (nameController.text.isNotEmpty) {
      SettingsUtils.set('name_user', nameController.text);
      Get.toNamed(AppRoutes.welcomeRoute);
    } else {
      Get.snackbar(
        'Error',
        'Please enter your name',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
