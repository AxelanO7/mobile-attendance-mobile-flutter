import 'package:mobile_attendance/src/core/base_import.dart';

import 'input_name_controller.dart';

class InputMobilePage extends StatelessWidget {
  const InputMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InputNameController>(
      builder: (controller) => PopScope(
        canPop: controller.canPop,
        child: Scaffold(
          body: ScrollConfiguration(
            behavior: CustomDisableGlowBehavior(),
            child: SingleChildScrollView(
              child: SizedBox(
                height: Get.height - 32,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/global/logo_think_foward_black.png', width: Get.width / 2.5, height: Get.width / 2.5),
                    Text(
                      'What\'s your name?',
                      style: TypographyStyle.heading4Bold,
                    ),
                    const SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 36),
                      child: TextField(
                        controller: controller.nameController,
                        decoration: InputDecoration(
                          hintText: 'Enter your name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    CustomButton(
                      width: Get.width - 72,
                      height: 44,
                      color: ColorStyle.hashMicroGreyColor,
                      onPressed: controller.saveName,
                      child: Text(
                        'Save',
                        style: TypographyStyle.body2Bold.copyWith(color: ColorStyle.whiteColor),
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
