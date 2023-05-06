import 'package:client_app/screens/work_period.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            getAppBar(),
            const SizedBox(height: 20),
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.search),
                  SizedBox(width: 15),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Exercise with keyword",
                        hintStyle: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            DefaultTabController(
              length: 2,
              child: TabBar(
                labelColor: Colors.black,
                controller: tabController,
                tabs: const [
                  Tab(text: "General"),
                  Tab(
                    text: "Personalized",
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    getgeneralWidget(),
                    ListView(
                      children: [
                        getPersonalized(),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getAppBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 15),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.pinkAccent.withOpacity(0.5),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 20,
            ),
          ),
          const SizedBox(width: 15),
          const Text(
            "Library",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget getgeneralWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.blueAccent.shade100,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.video_call,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Workout With Friends",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text("Total points"),
          const SizedBox(height: 8),
          Row(
            children: const [
              CircleAvatar(
                radius: 8,
                backgroundColor: Colors.orange,
              ),
              SizedBox(width: 8),
              Text(
                "5.00",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 200,
              ),
              physics: const BouncingScrollPhysics(),
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
                generalBodyWidget(),
                generalBodyWidget(),
                generalBodyWidget(),
                generalBodyWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container generalBodyWidget() {
    return Container(
      // margin: const EdgeInsets.only(right: 10, top: 5, bottom: 5),
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

  Widget getPersonalized() {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return Container(
              height: 414,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              // height: 300,
              width: 316,
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 30,
                bottom: 200,
              ),
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
                bottom: 50,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Share invite Links to \nfriends and workout \ntogether",
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      CircleAvatar(),
                      CircleAvatar(),
                      CircleAvatar(),
                      CircleAvatar(),
                    ],
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    "jhsdccuy sgdc uisd cysdvcygsvdchusd\nyusdcusdcyusdcuygsgdyt sdc",
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        radius: 27,
                        backgroundColor: Color(0xffA4C9FF),
                      ),
                      SizedBox(width: 50),
                      CircleAvatar(
                        radius: 27,
                        backgroundColor: Color(0xffA4C9FF),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        fixedSize: const Size(150, 50)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Workperiod(),
                        ),
                      );
                    },
                    child: const Text(
                      "Done",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
      child: Container(
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
      ),
    );
  }
}
