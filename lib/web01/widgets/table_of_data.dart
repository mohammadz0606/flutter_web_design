import 'package:flutter/material.dart';

import '../shared/colors.dart';

class TableOfData extends StatelessWidget {
  const TableOfData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Player Data",
                style: TextStyle(
                  fontSize: 22,
                  color: MyColors.black,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: MyColors.mainColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Text(
                  "GO to Table",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                ),
                children: [
                  _tableHeader(text: "Name"),
                  _tableHeader(text: "ID"),
                  _tableHeader(text: "Date"),
                  _tableHeader(text: "Status"),
                ],
              ),
              TableRow(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                ),
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(1000),
                          child: Image.asset(
                            "assets/user1.jpg",
                            width: 30,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text("User 1")
                      ],
                    ),
                  ),
                  const Text("Trainer Trainer Trainer Trainer"),
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: MyColors.mainColor,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text("Active"),
                    ],
                  ),
                  Image.asset(
                    "assets/more.png",
                    color: Colors.grey,
                    height: 30,
                  ),
                ],
              ),
              TableRow(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                ),
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(1000),
                          child: Image.asset(
                            "assets/user2.jpg",
                            width: 30,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text("User 2")
                      ],
                    ),
                  ),
                  const Text("User"),
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: MyColors.mainColor,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text("Active"),
                    ],
                  ),
                  Image.asset(
                    "assets/more.png",
                    color: Colors.grey,
                    height: 30,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("View 4 form 40"),
              Text(
                "View All",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _tableHeader({required String text}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: MyColors.black,
        ),
      ),
    );
  }
}
