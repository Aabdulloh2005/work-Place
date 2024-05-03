import 'package:flutter/material.dart';
import 'package:lesson_28/classes/bottombar.dart';
import 'package:lesson_28/screens/main_page.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => MainPage()));
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
          style: IconButton.styleFrom(
            side: const BorderSide(
              color: Colors.grey,
            ),
            iconSize: 30,
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 45,
            child: Image.asset(
              "assets/images/face.png",
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "March",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Text(
                  "April",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "May",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward,
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalendarDecoration(currendDay: false, day: "4", week: "Sat"),
                  CalendarDecoration(currendDay: true, day: "5", week: "Sun"),
                  CalendarDecoration(currendDay: false, day: "6", week: "Mon"),
                  CalendarDecoration(currendDay: false, day: "7", week: "Tue"),
                  CalendarDecoration(currendDay: false, day: "8", week: "Wed"),
                  CalendarDecoration(currendDay: false, day: "9", week: "Thu"),
                  CalendarDecoration(currendDay: false, day: "10", week: "Fri"),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Ongoing",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const OngoingSection(
                      clock_1: "9AM",
                      clock_2: "10AM",
                      color_1: Color(0xffFFD29D),
                      color_2: Color(0xffFF9E2D),
                      title: "Information Architecture",
                      name: "Saber & Oro",
                      allClock: "9.00 AM - 10.00 AM",
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        const Text(
                          "10AM",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            color: Color(0xff8B78FF),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 2,
                            decoration: const BoxDecoration(
                              color: Color(0xff8B78FF),
                              // shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    const OngoingSection(
                      clock_1: "11AM",
                      clock_2: "12:00PM",
                      color_1: Color(0xffB1EEFF),
                      color_2: Color(0xff29BAE2),
                      title: "Software testing",
                      name: "Saber & Mike",
                      allClock: "11.00 AM - 12.00 PM",
                    ),
                    const SizedBox(height: 30),
                    const OngoingSection(
                      clock_1: "1PM",
                      clock_2: "2PM",
                      color_1: Color(0xffFFA0BC),
                      color_2: Color(0xffFF1B5E),
                      title: "Mobile App Design",
                      name: "Saber & Mike",
                      allClock: "21.00 PM - 22.00 PM",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ReturnBottomBar(),
    );
  }
}

class OngoingSection extends StatelessWidget {
  final String clock_1;
  final String clock_2;
  final Color color_1;
  final Color color_2;
  final String title;
  final String name;
  final String allClock;

  const OngoingSection({
    super.key,
    required this.clock_1,
    required this.clock_2,
    required this.color_1,
    required this.color_2,
    required this.title,
    required this.name,
    required this.allClock,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              clock_1,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 50),
            Text(
              clock_2,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            height: 100,
            width: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  color_1,
                  color_2,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Image.asset("assets/images/man.png",
                              height: 30, width: 30),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 22),
                            child: Image.asset("assets/images/woman.png",
                                height: 30, width: 30),
                          ),
                        ],
                      ),
                      Text(
                        allClock,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CalendarDecoration extends StatelessWidget {
  const CalendarDecoration({
    super.key,
    required this.currendDay,
    required this.day,
    required this.week,
  });

  final bool currendDay;
  final String day;
  final String week;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 70,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(43),
        gradient: currendDay
            ? const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff8B78FF),
                  Color(0xff5451D6),
                ],
              )
            : const LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white,
                ],
              ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff1D1617).withOpacity(0.1),
            blurRadius: 2.5,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: currendDay ? Colors.white : null,
            ),
          ),
          Text(
            week,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: currendDay ? Colors.white : null,
            ),
          ),
        ],
      ),
    );
  }
}
