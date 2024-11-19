import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movo_daily_exercises_app/constants.dart';

class ButtomNavigationBarItem extends StatelessWidget {
  const ButtomNavigationBarItem({
    super.key,
    required this.image,
    required this.title,
    required this.press,
    this.isActive = false,
  });

  final String image, title;
  final VoidCallback press;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            image,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(
              color: isActive ? kActiveIconColor : kTextColor,
              fontSize: 16,
              fontWeight: isActive ? FontWeight.bold : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
