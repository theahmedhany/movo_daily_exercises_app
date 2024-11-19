import 'package:flutter/material.dart';
import 'package:movo_daily_exercises_app/widgets/button_navigation_bar_item.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtomNavigationBarItem(
            image: 'assets/icons/calendar.svg',
            title: 'Today',
            press: () {},
          ),
          ButtomNavigationBarItem(
            image: 'assets/icons/gym.svg',
            title: 'All Exercises',
            press: () {},
            isActive: true,
          ),
          ButtomNavigationBarItem(
            image: 'assets/icons/Settings.svg',
            title: 'Settings',
            press: () {},
          ),
        ],
      ),
    );
  }
}
