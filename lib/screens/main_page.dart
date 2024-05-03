import 'package:flutter/material.dart';
import 'package:lesson_28/classes/bottombar.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final List<double> height = [150, 105, 105, 150];
  final List colors = [
    [const Color(0xffA9FFEA), const Color(0xff00B288)],
    [const Color(0xffFFA0BC), const Color(0xffFF1B5E)],
    [const Color(0xffFFD29D), const Color(0xffFF9E2D)],
    [const Color(0xffB1EEFF), const Color(0xff29BAE2)],
  ];
  final List numbers = ["22", "12", "7", "14"];
  final List titles = ["Done", "Ongoing", "In Progress", "Waiting For Review"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        appBar: AppBar(
          backgroundColor: const Color(0xffE5E5E5),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Monday",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff7F7F7F),
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "25 October",
                style: TextStyle(
                    fontSize: 24,
                    color: Color(0xff040415),
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search_rounded),
                    style: IconButton.styleFrom(
                        side: BorderSide(color: Colors.grey.shade300)),
                  ),
                  Image.asset(
                    "assets/images/face.png",
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Surf.",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "5 Tasks are predning",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff8D8D8D),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xff8B78FF), Color(0xff5451D6)]),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Information Architecture",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Saber & Oro",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              Image.asset("assets/images/man.png",
                                  height: 30, width: 30),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 22),
                                child: Image.asset("assets/images/woman.png",
                                    height: 30, width: 30),
                              ),
                            ],
                          ),
                          const Text(
                            "Now",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                "Monthly Preview",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        for (int i = 0; i < 2; i++)
                          Containers(
                              height[i], colors[i], numbers[i], titles[i])
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        for (int i = 2; i < 4; i++)
                          Containers(
                              height[i], colors[i], numbers[i], titles[i])
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: const ReturnBottomBar());
  }
}

class Containers extends StatelessWidget {
  const Containers(this.height, this.colors, this.number, this.title,
      {super.key});

  final double height;

  final List<Color> colors;
  final String number;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 300,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
            stops: const [0, 1],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: colors),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 36),
          ),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
