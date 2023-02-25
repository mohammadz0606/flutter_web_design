import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controls/menu_controller.dart';
import '../shared/app_responsive.dart';
import '../shared/colors.dart';

class HeadBar extends StatelessWidget {
  const HeadBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!AppResponsive.isWeb(context))
          IconButton(
            onPressed: () {
              Provider.of<MenuControllerProvider>(context, listen: false)
                  .controlMenu();
            },
            color: MyColors.bgSideMenu,
            icon: const Icon(
              Icons.menu,
            ),
          ),
        const Text(
          "Gym Admin",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Row(
          children: [
            _navIcon(icon: Icons.search),
            _navIcon(icon: Icons.send),
            _navIcon(icon: Icons.notifications_active),
          ],
        ),
      ],
    );
  }

  Padding _navIcon({
    required IconData icon,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        icon,
        color: MyColors.black,
      ),
    );
  }
}
