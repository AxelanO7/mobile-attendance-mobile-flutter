import 'package:mobile_attendance/src/core/base_import.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_attendance/src/views/main_page/about/about_view.dart';
import 'package:mobile_attendance/src/views/main_page/history/mobile_page.dart';
import 'package:mobile_attendance/src/views/main_page/main_page_controller.dart';

import 'home/mobile_page.dart';

class MainPageMobilePage extends StatelessWidget {
  const MainPageMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainPageController>(
      builder: (controller) => SafeArea(
        child: Scaffold(
          backgroundColor: ColorStyle.whiteColor,
          body: PageView(
            scrollDirection: Axis.vertical,
            controller: MainPageController.pageController,
            scrollBehavior: CustomDisableGlowBehavior(),
            physics: const NeverScrollableScrollPhysics(),
            children: [
              const HistoryMobilePage(),
              HomePageMobilePage(rootController: controller),
              const AboutView(),
            ],
          ),
          floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SizedBox(
              height: 65,
              width: 65,
              child: FloatingActionButton(
                onPressed: controller.tapHome,
                backgroundColor: MainPageController.indexTab == 1
                    ? Colors.red //ColorStyle.secondaryColor
                    : ColorStyle.hashMicroGreyColor, //ColorStyle.primaryDarkColor,
                tooltip: 'Home',
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(
                    'assets/images/global/home.svg',
                  ),
                ),
              ),
            ),
          ),
          bottomNavigationBar: SafeArea(
            child: FABBottomAppBar(
              height: 60,
              onFabTapped: false,
              color: ColorStyle.hashMicroGreyColor,
              currentIndex: MainPageController.indexTab > 1
                  ? MainPageController.indexTab - 1
                  : MainPageController.indexTab,
              selectedColor: MainPageController.indexTab == 1
                  ? ColorStyle.hashMicroGreyColor
                  : Colors.red, //ColorStyle.secondaryColor,
              onTabSelected: controller.tapTab,
              items: [
                FABBottomAppBarItem(
                    iconData: 'assets/images/global/list.svg', text: 'History'),
                FABBottomAppBarItem(
                    iconData: 'assets/images/global/profile.svg', text: 'About'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
