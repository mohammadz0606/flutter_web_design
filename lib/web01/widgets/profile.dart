import 'package:flutter/material.dart';

import '../shared/colors.dart';

class ProfileGym extends StatelessWidget {
  const ProfileGym({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image.asset(
                  "assets/user4.jpg",
                  height: 60,
                  width: 60,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Gym Test",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Admin",
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Image.asset("assets/user3.jpg"),
        ],
      ),
    );
  }
}
