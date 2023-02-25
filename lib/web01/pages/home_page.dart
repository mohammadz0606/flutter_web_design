import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../controls/menu_controller.dart';
import '../shared/app_responsive.dart';
import '../widgets/dashboard.dart';
import '../widgets/side_bar_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SidBar(),
      key:
          Provider.of<MenuControllerProvider>(context, listen: false).globalKey,
      body: SafeArea(
        child: Row(
          children: [
            if (AppResponsive.isWeb(context))
              const Expanded(
                flex: 1,
                child: SidBar(),
              ),
            const Expanded(
              flex: 4,
              child: DashboardHome(),
            ),
          ],
        ),
      ),
    );
  }
}
