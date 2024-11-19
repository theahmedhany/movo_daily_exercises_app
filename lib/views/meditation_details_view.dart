import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movo_daily_exercises_app/constants.dart';
import 'package:movo_daily_exercises_app/widgets/custom_buttom_navigation_bar.dart';
import 'package:movo_daily_exercises_app/widgets/custom_search_bar.dart';
import 'package:movo_daily_exercises_app/widgets/meditation_session_card.dart';

class MeditationDetailsView extends StatelessWidget {
  const MeditationDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.458,
            decoration: const BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("assets/images/meditation_bg.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 16),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          alignment: Alignment.center,
                          width: 45,
                          height: 45,
                          decoration: const BoxDecoration(
                            color: kBlueColor,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: Colors.white,
                              size: 22,
                            ),
                          )),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Meditation",
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w900,
                        color: kTextColor,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "3-10 MIN Course",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: kTextColor,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: size.width * 0.6,
                      child: const Text(
                        "Live happier and healthier by learning the fundamentals of meditation and mindfulness.",
                        style: TextStyle(
                          fontSize: 14,
                          color: kTextColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.5,
                      child: const CustomSearchBar(),
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: <Widget>[
                        MeditationSessionCard(
                          seassionNum: 1,
                          isDone: true,
                          press: () {},
                        ),
                        MeditationSessionCard(
                          seassionNum: 2,
                          press: () {},
                        ),
                        MeditationSessionCard(
                          seassionNum: 3,
                          press: () {},
                        ),
                        MeditationSessionCard(
                          seassionNum: 4,
                          press: () {},
                        ),
                        MeditationSessionCard(
                          seassionNum: 5,
                          press: () {},
                        ),
                        MeditationSessionCard(
                          seassionNum: 6,
                          press: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Meditation",
                      style: TextStyle(
                        fontSize: 20,
                        color: kTextColor,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      padding: const EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/icons/Meditation_women_small.svg",
                          ),
                          const SizedBox(width: 20),
                          const Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Basic 2",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: kTextColor,
                                  ),
                                ),
                                Text(
                                  "Start your deepen you practice.",
                                  style: TextStyle(
                                    color: kTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset("assets/icons/Lock.svg"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
