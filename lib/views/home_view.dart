import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movo_daily_exercises_app/constants.dart';
import 'package:movo_daily_exercises_app/views/meditation_details_view.dart';
import 'package:movo_daily_exercises_app/widgets/category_card.dart';
import 'package:movo_daily_exercises_app/widgets/custom_buttom_navigation_bar.dart';
import 'package:movo_daily_exercises_app/widgets/custom_search_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: Color(0xfff5ceb8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(right: 20, top: 10, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      width: 52,
                      height: 52,
                      decoration: const BoxDecoration(
                        color: Color(0xfff2bea1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ),
                  const Text(
                    'Good Morning \nAhmed',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      color: kTextColor,
                    ),
                  ),
                  const CustomSearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        CategoryCard(
                          image: 'assets/icons/Hamburger.svg',
                          title: 'Diet\nRecommends',
                          press: () {},
                        ),
                        CategoryCard(
                          image: 'assets/icons/Excrecises.svg',
                          title: 'Kegel Exercises',
                          press: () {},
                        ),
                        CategoryCard(
                          image: 'assets/icons/Meditation.svg',
                          title: 'Meditation',
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const MeditationDetailsView();
                                },
                              ),
                            );
                          },
                        ),
                        CategoryCard(
                          image: 'assets/icons/yoga.svg',
                          title: 'Yoga',
                          press: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
