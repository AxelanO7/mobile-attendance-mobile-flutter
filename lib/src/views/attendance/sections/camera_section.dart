import 'package:mobile_attendance/src/core/base_import.dart';
import 'package:mobile_attendance/src/views/attendance/attendance_controller.dart';

class CameraSection extends StatelessWidget {
  const CameraSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AttendanceController>(
      builder: (controller) => PopScope(
        canPop: controller.canPop,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: ColorStyle.whiteColor,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: ColorStyle.hashMicroGreyColor),
              onPressed: controller.onGoBack,
            ),
            title: Text(
              'Camera Attendance',
              style: TypographyStyle.body1SemiBold,
            ),
            centerTitle: true,
          ),
          backgroundColor: ColorStyle.whiteColor,
          body: ScrollConfiguration(
            behavior: CustomDisableGlowBehavior(),
            child: SingleChildScrollView(
              child: SizedBox(
                height: Get.height - 80,
                width: Get.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height - 84,
                      child: Column(
                        children: [
                          const SizedBox(height: 40),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              'Please take a picture of yourself to confirm your attendance',
                              style: TypographyStyle.body2Reguler.copyWith(color: ColorStyle.hashMicroGreyColor),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 28),
                          InkWell(
                            onTap: controller.takePicturePresence,
                            child: Container(
                              height: Get.width - 32,
                              width: Get.width - 32,
                              decoration: BoxDecoration(
                                color: ColorStyle.hashMicroGreyColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: controller.imageFile == null
                                  ? Center(
                                      child: Icon(
                                        Icons.camera_alt,
                                        size: 48,
                                        color: ColorStyle.whiteColor,
                                      ),
                                    )
                                  : ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.file(
                                        controller.imageFile!,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                            ),
                          ),
                          const Spacer(),
                          CustomButton(
                            width: Get.width - 32,
                            height: 48,
                            color: ColorStyle.hashMicroGreyColor,
                            radius: 12,
                            onPressed: controller.savePicturePresence,
                            child: Text('Save Picture', style: TypographyStyle.body2Bold.copyWith(color: ColorStyle.whiteColor)),
                          ),
                          const SizedBox(height: 12),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
