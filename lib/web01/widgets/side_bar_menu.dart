import 'package:flutter/material.dart';

import '../shared/colors.dart';

class SidBar extends StatelessWidget {
  const SidBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: MyColors.bgSideMenu,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Gym Admin",
                style: TextStyle(
                  color: MyColors.mainColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _bulidDrawerItems(
              icon: "assets/menu_home.png",
              title: "Dashboard",
            ),
            _bulidDrawerItems(
              icon: "assets/menu_recruitment.png",
              title: "Recruitment",
            ),
            _bulidDrawerItems(
              icon: "assets/menu_onboarding.png",
              title: "Boarding",
            ),
            _bulidDrawerItems(
              icon: "assets/menu_report.png",
              title: "Reports",
            ),
            _bulidDrawerItems(
              icon: "assets/menu_calendar.png",
              title: "Calender",
            ),
            _bulidDrawerItems(
              icon: "assets/menu_settings.png",
              title: "Setting",
            ),
            const Spacer(),
            Image.asset("assets/sidebar_image.png"),
          ],
        ),
      ),
    );
  }

  ListTile _bulidDrawerItems({
    required String icon,
    required String title,
  }) {
    return ListTile(
      horizontalTitleGap: 0.5,
      leading: Image.asset(
        icon,
        color: MyColors.white,
        height: 17,
      ),
      title: Text(
        title,
        style: const TextStyle(color: MyColors.white),
      ),
    );
  }
}
