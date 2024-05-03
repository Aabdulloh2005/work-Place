import 'package:flutter/material.dart';
import 'package:lesson_28/screens/calendar_page.dart';
import 'package:lesson_28/screens/main_page.dart';

class ReturnBottomBar extends StatelessWidget {
  const ReturnBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(25), right: Radius.circular(25)),
      child: BottomAppBar(
        notchMargin: 8,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MainPage()));
              },
              icon: Image.asset(
                "assets/icons/home.png",
              ),
              iconSize: 10,
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CalendarPage()));
              },
              icon: Image.asset("assets/icons/calendar.png"),
              iconSize: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icons/message.png"),
              iconSize: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icons/person.png"),
              iconSize: 20,
            ),
          ],
        ),
      ),
    );
  }
}
