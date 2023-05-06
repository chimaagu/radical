import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            getAppbar(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.location_on),
                SizedBox(width: 10),
                Text("Lagos"),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: const Color(0xff0D1A2E),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Learn About Rehbox",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 165,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/vid1.png"),
                        ),
                        borderRadius: BorderRadius.circular(15)),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.purpleAccent,
                    child: Icon(
                      Icons.favorite,
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "General Body Workout",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  generalBodyWidget(),
                  generalBodyWidget(),
                  generalBodyWidget(),
                  generalBodyWidget(),
                  generalBodyWidget(),
                  generalBodyWidget(),
                  generalBodyWidget(),
                  generalBodyWidget(),
                  generalBodyWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container generalBodyWidget() {
    return Container(
      margin: const EdgeInsets.only(right: 10, top: 5, bottom: 5),
      height: 190,
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 90,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.red,
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("images/vid1.png"),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            "Cardio",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              const Text(
                "30min 10sec",
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              const SizedBox(width: 10),
              CircleAvatar(
                radius: 5,
                backgroundColor: Colors.grey.shade800,
              ),
              const SizedBox(width: 10),
              const CircleAvatar(
                radius: 5,
                backgroundColor: Colors.orange,
              ),
              const SizedBox(width: 10),
              const Text(
                "0 points",
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget getAppbar() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: Row(
        children: [
          Stack(
            children: const [
              CircleAvatar(
                radius: 30,
              ),
              Positioned(
                right: 0,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.check,
                    size: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          const Text("Hello Briggs"),
          const Spacer(),
          const Icon(
            Icons.notifications,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
