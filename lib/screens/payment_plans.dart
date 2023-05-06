import 'package:client_app/screens/buy_basic.dart';
import 'package:flutter/material.dart';

class PaymentPlans extends StatefulWidget {
  const PaymentPlans({super.key});

  @override
  State<PaymentPlans> createState() => _PaymentPlansState();
}

class _PaymentPlansState extends State<PaymentPlans>
    with SingleTickerProviderStateMixin {
  TabController? pageController;
  @override
  void initState() {
    pageController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Color(0xffFF95C4),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 15,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Payment Plans",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            DefaultTabController(
              length: 3,
              child: TabBar(
                controller: pageController,
                labelColor: const Color(0xff25497D),
                unselectedLabelColor: Colors.grey,
                tabs: const [
                  Tab(text: "Basic"),
                  Tab(text: "Standard"),
                  Tab(text: "Premium")
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 500,
              child: DefaultTabController(
                length: 3,
                child: TabBarView(
                  controller: pageController,
                  children: [
                    basicPlan(),
                    standardPlan(),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 17,
                                backgroundColor: const Color(0xffFF95C4),
                                child: Image.asset("images/premium.png"),
                              ),
                              const SizedBox(width: 15),
                              const Text(
                                "Premium Plan",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          basicPlans("Two virtual consultations"),
                          basicPlans("Detailed assessment"),
                          basicPlans("One physiotherapist treatment session"),
                          basicPlans("Chat with a physiotherapist"),
                          basicPlans("Personalized exercise plan"),
                          basicPlans("Facilitated check-ins"),
                          const SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "N75,000/month",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(height: 40),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffDE4589),
                              fixedSize: const Size(double.maxFinite, 40),
                            ),
                            onPressed: () {},
                            child: const Text("Buy Premium plan"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding standardPlan() {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 17,
                backgroundColor: const Color(0xffFF95C4),
                child: Image.asset("images/standard.png"),
              ),
              const SizedBox(width: 15),
              const Text(
                "Standard Plan",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          basicPlans("Two virtual consultations"),
          basicPlans("Detailed assessment"),
          basicPlans("One physiotherapist treatment session"),
          basicPlans("Chat with a physiotherapist"),
          basicPlans("Personalized exercise plan"),
          basicPlans("Facilitated check-ins"),
          const SizedBox(height: 10),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "N25,000/month",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffDE4589),
              fixedSize: const Size(double.maxFinite, 40),
            ),
            onPressed: () {},
            child: const Text("Buy Standard plan"),
          )
        ],
      ),
    );
  }

  Padding basicPlan() {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 17,
                backgroundColor: const Color(0xffFF95C4),
                child: Image.asset("images/basic.png"),
              ),
              const SizedBox(width: 15),
              const Text(
                "Basic Plan",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          basicPlans("Personalized exercise plan"),
          basicPlans("Chat with an exercise expert"),
          basicPlans("Facilitated check-ins"),
          const SizedBox(height: 10),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "N5,000/month",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffDE4589),
              fixedSize: const Size(double.maxFinite, 40),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BasicPurchase(),
                ),
              );
            },
            child: const Text("Buy Basic plan"),
          )
        ],
      ),
    );
  }

  Widget basicPlans(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          const Icon(
            Icons.check,
            color: Colors.green,
          ),
          const SizedBox(width: 15),
          Text(
            text,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
