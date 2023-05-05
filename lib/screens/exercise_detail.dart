import 'package:flutter/material.dart';

class ExerciseDetail extends StatefulWidget {
  const ExerciseDetail({super.key});

  @override
  State<ExerciseDetail> createState() => _ExerciseDetailState();
}

class _ExerciseDetailState extends State<ExerciseDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
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
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 15,
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: const CircleAvatar(
                              radius: 18,
                              backgroundColor: Color(0xff938295),
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 26,
                            width: 121,
                            decoration: BoxDecoration(
                              color: const Color(0xff0D1A2E),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(
                              child: Text(
                                "Motion Tracker On",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Image.asset("images/shrink.png"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: const [
                  Text(
                    "Quaddricep stretch",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0D1A2E),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "2m : 10s",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0D1A2E),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/backward.png",
                  color: const Color(0xff25497D),
                ),
                const SizedBox(width: 10),
                CircleAvatar(
                  radius: 18,
                  backgroundColor: const Color(0xff25497D),
                  child: Image.asset("images/pause.png"),
                ),
                const SizedBox(width: 10),
                Image.asset(
                  "images/forward.png",
                  color: const Color(0xff25497D),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 60,
              color: const Color(0xff25497D),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/mute.png"),
                  const SizedBox(width: 50),
                  Image.asset("images/video.png"),
                  const SizedBox(width: 50),
                  Image.asset("images/mic.png"),
                  const SizedBox(width: 50),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 18,
                    child: Image.asset("images/phone.png"),
                  ),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 60,
              color: Colors.white,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/person.png"),
                  ),
                  Positioned(
                    left: 20,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/person.png"),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/person.png"),
                    ),
                  ),
                  Positioned(
                    left: 60,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/person.png"),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView(
                controller: ScrollController(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: [
                  Image.asset("images/doctor.png", fit: BoxFit.fill),
                  Image.asset("images/doctor.png", fit: BoxFit.fill),
                  Image.asset("images/doctor.png", fit: BoxFit.fill),
                  Image.asset("images/doctor.png", fit: BoxFit.fill),
                  Image.asset("images/doctor.png", fit: BoxFit.fill),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
