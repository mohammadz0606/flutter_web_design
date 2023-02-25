import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../shared/colors.dart';

class CalenderDash extends StatelessWidget {
  const CalenderDash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                DateFormat("MMM,yyyy").format(dateTime),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.chevron_left),
                    color: MyColors.black,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.chevron_right),
                    color: MyColors.black,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
          TableCalendar(
            focusedDay: dateTime,
            firstDay: DateTime.utc(DateTime.now().year),
            lastDay: DateTime.utc(2050),
            headerVisible: false,
          ),
        ],
      ),
    );
  }
}
