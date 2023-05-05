import 'package:client_app/screens/workout.dart';
import 'package:flutter/material.dart';

class Workperiod extends StatefulWidget {
  const Workperiod({super.key});

  @override
  State<Workperiod> createState() => _WorkperiodState();
}

class _WorkperiodState extends State<Workperiod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            getAppBar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Start Time",
                        style: TextStyle(
                          color: Color(0xff6A6A6A),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Text(
                            "03:05",
                            style: TextStyle(
                              color: Color(0xff6A6A6A),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 35),
                          Text(
                            "am",
                            style: TextStyle(
                              color: Color(0xff6A6A6A),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Divider(thickness: 2),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Start Time",
                        style: TextStyle(
                          color: Color(0xff6A6A6A),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Text(
                            "03:05",
                            style: TextStyle(
                              color: Color(0xff6A6A6A),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 35),
                          Text(
                            "am",
                            style: TextStyle(
                              color: Color(0xff6A6A6A),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Divider(thickness: 2),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: const [
                  Text(
                    "Tues, Thurs, Sat",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "3hours",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            dayWidget(day: "Monday"),
            dayWidget(day: "Tuesday"),
            dayWidget(day: "Wednesday"),
            dayWidget(day: "Thursday"),
            dayWidget(day: "Friday"),
            dayWidget(day: "Saturday"),
            dayWidget(day: "Sunday"),
            const SizedBox(height: 30),
            getPersonalized(),
          ],
        ),
      ),
    );
  }

  Widget dayWidget({String? day}) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Workout(),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: double.maxFinite,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xffEFEFEF),
        ),
        child: Row(
          children: [
            Text(
              day!,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        children: [
          Container(
            height: 30,
            width: 83,
            decoration: BoxDecoration(
              color: const Color(0xffFF95C4),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          const Spacer(),
          const Text(
            "Workout Period",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          Container(
            height: 30,
            width: 83,
            decoration: BoxDecoration(
              color: const Color(0xffFF95C4),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ],
      ),
    );
  }

  Widget getPersonalized() {
    return Container(
      height: 101,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 10,
            )
          ]),
      child: Center(
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Personalized Plan",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Get a personalized exercise plan for an \nexercise expert for better result",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Only for members on Subscription",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
            const Spacer(),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.pink.shade100,
            )
          ],
        ),
      ),
    );
  }
}
