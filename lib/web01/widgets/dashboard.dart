import 'package:flutter/material.dart';

import '../shared/app_responsive.dart';
import '../shared/colors.dart';
import 'calender.dart';
import 'head_bar.dart';
import 'notification.dart';
import 'profile.dart';
import 'table_of_data.dart';

class DashboardHome extends StatelessWidget {
  const DashboardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: MyColors.bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          const HeadBar(),
          const SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        const NotificationDash(),
                        const SizedBox(height: 10),
                        if (AppResponsive.isMobile(context)) ...{
                          const CalenderDash(),
                          const SizedBox(height: 10),
                          const ProfileGym(),
                        },
                        const TableOfData(),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  if (!AppResponsive.isMobile(context))
                    Expanded(
                      child: Column(
                        children: const [
                          CalenderDash(),
                          SizedBox(height: 30),
                          ProfileGym(),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
