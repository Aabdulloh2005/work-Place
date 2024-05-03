import 'package:flutter/material.dart';
import 'package:lesson_28/screens/main_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 410),
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage("assets/images/back.png"))),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
        ),
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/scroll.png",
              height: 20,
              width: 45,
            ),
            const Column(
              children: [
                Text(
                  "Building Better Workplaces",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Create a unique emotional story that describes better than words",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff8D8D8D)),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 60),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xff5451D6),
                      offset: Offset(0, 5),
                      blurRadius: 14,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                      end: Alignment.bottomRight,
                      begin: Alignment.topLeft,
                      colors: [Color(0xff8B78FF), Color(0xff5451D6)])),
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
