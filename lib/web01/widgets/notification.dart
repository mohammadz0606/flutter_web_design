import 'package:flutter/material.dart';
import 'package:flutter_web/web01/shared/app_responsive.dart';

import '../shared/colors.dart';

class NotificationDash extends StatelessWidget {
  const NotificationDash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: MyColors.mainColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "Mohammad"),
                    TextSpan(
                      text: "\tNew User",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                style: TextStyle(
                  fontSize: 16,
                  color: MyColors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "It is a long established fact that a reader will\nbe distracted by the readable content of\na page when looking at its\nlayout. The point of using Lorem\nIpsum is that it has a more-or-less normal\ndistribution of letters",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          const Spacer(),
          if (AppResponsive.isWeb(context) || AppResponsive.isTablet(context))
            Image.asset(
              "assets/disk_image.png",
              height: 120,
            ),
          if (AppResponsive.isMobile(context))
            Image.asset(
              "assets/disk_image.png",
              height: 60,
            ),
        ],
      ),
    );
  }
}
