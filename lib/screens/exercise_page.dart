import 'package:client_app/screens/exercise_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ExerciseDetail(),
                ),
              ),
              child: Container(
                height: 276,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("images/exercise.png"),
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15, top: 15),
                        child: Image.asset("images/shrink.png"),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.white,
                          child: Stack(
                            children: const [
                              CircularProgressIndicator(
                                color: Color(0xffDE4589),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "1",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Row(
                children: [
                  const Text(
                    "Quaddricep stretch",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff0D1A2E),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "2m : 10s",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff0D1A2E),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return CupertinoAlertDialog(
                            title: const Text(
                              "Workout Completed",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff969696),
                              ),
                            ),
                            content: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 30),
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                    ),
                                    height: 61,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffDE4589),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset("images/trophy.png"),
                                        const SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Available Points',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Image.asset("images/coin.png"),
                                                const Text(
                                                  "5:00",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  const Text(
                                    "You have been awarded 5points for your completed session, keep it up!",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff969696),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  RichText(
                                    textAlign: TextAlign.center,
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                          text:
                                              "Points can be used to purchase Items in the ",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff08101D),
                                          ),
                                        ),
                                        TextSpan(
                                          text: "store ",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xffDE4589),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Container(
                                    height: 40,
                                    width: 191,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffDE4589),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Back  to Library",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 26,
                      width: 85,
                      decoration: BoxDecoration(
                        color: const Color(0xffDE4589),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          "End Session",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20),
              child: const Text(
                "Next",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 20),
            nextWidget(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const AlertScreen(),
                //   ),
                // );
              },
            ),
            const Divider(thickness: 1.2),
            nextWidget(),
            const Divider(thickness: 1.2),
            nextWidget(),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  Widget nextWidget({VoidCallback? onTap}) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 30),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("images/exercise.png"),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Quadricep stretch",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff08101D),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Text(
                      "2min 10sec",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff6A6A6A),
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.circle,
                      size: 8,
                      color: Color(0xff6A6A6A),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "0 Points",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff6A6A6A),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            const CircleAvatar(
              backgroundColor: Color(0xff6A6A6A),
              radius: 10,
              child: Icon(
                Icons.remove,
                color: Colors.white,
                size: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
