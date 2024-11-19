import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movo_daily_exercises_app/constants.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          icon: SvgPicture.asset('assets/icons/search.svg'),
          hintStyle: const TextStyle(
            color: kTextColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
