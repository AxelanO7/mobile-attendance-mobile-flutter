import 'package:mobile_attendance/src/core/base_import.dart';

import 'input_name_controller.dart';
import 'input_name_mobile_page.dart';

class InputNameView extends StatelessWidget {
  const InputNameView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget<InputNameController>(
      backgroundColor: ColorStyle.whiteColor,
      controller: InputNameController(),
      appBar: AppBar(
        backgroundColor: ColorStyle.whiteColor,
        systemOverlayStyle: SystemUiOverlayStyle(
          // Android
          statusBarColor: ColorStyle.whiteColor,
          statusBarIconBrightness: Brightness.dark,
          // iOS
          statusBarBrightness: Brightness.light,
          systemNavigationBarColor: ColorStyle.whiteColor,
          systemNavigationBarIconBrightness: Brightness.light,
          systemNavigationBarDividerColor: ColorStyle.whiteColor,
        ),
        toolbarHeight: 0,
        elevation: 0,
        centerTitle: true,
      ),
      extendBody: true,
      mobile: (controller) => const InputMobilePage(),
    );
  }
}
