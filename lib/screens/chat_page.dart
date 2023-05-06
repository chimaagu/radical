import 'package:client_app/screens/rewards_points.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getAppbar(),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 54,
                          width: 282,
                          decoration: const BoxDecoration(
                            color: Color(0xffFF95C4),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Welcome to your chat with Grace , what would you like to do first?",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff0D1A2E),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      GestureDetector(
                        onTap: () {
                          showCupertinoModalPopup(
                            context: context,
                            builder: (context) {
                              return consultationPopUp();
                            },
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                              color: const Color(0xff25497D),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text(
                            'Book a free Consultation',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: const Color(0xff25497D),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Text(
                          'Chat with Physio ',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Flexible(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: const [
                        Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Type a message here",
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(
                          backgroundColor: Color(0xff130F26),
                          radius: 15,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget consultationPopUp() {
    return Material(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(15),
        topLeft: Radius.circular(15),
      ),
      child: Container(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        height: 700,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "Book Consultation",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                Container(
                  height: 33,
                  width: 59,
                  decoration: BoxDecoration(
                    color: const Color(0xffFF95C4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "N300",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(
                            0xff0D1A2E,
                          )),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 33,
              width: 170,
              decoration: BoxDecoration(
                color: const Color(0xffA4C9FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "Free Consultations left: 1",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Select date",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff969696),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: const [
                Text(
                  "12 December 2023",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                )
              ],
            ),
            const Divider(thickness: 1.2),
            const SizedBox(height: 20),
            const Text(
              "Time",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff969696),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: const [
                Text(
                  "03:50",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  "am",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 100,
              child: Divider(
                thickness: 1.2,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Complaints",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff969696),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              r"Lorem ipsum dolor sit amet consectetur. Mollis nullam amet ut dapibus cursus. Nibh varius massa pharetra gravida ut eu mi tempus sed. Massa quis "
              'volutpat est sapien arcu sit ut nullam. Tellus fermentum arcu semper convallis elit lobortis orci sit. Nec in commodo scelerisque morbi '
              'posuere ac tristique libero. Praesent viverra sit urna nunc cursus. Turpis interdum semper odio donec augue dolor ut nunc. Accumsan senectus tincidunt '
              'adipiscing felis tellus mattis. Tristique vulputate ullamcorper magna porttitor eu iaculis vehicula. Volutpat vitae at ac laoreet blandit vitae. Nulla lorem purus vitae '
              "ante nibh tincidunt. Tincidunt habitant eget amet leo",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            const TextField(maxLength: 100),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffDE4589),
                  fixedSize: const Size(double.maxFinite, 40)),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: const Text("Ratings"),
                      content: Column(children: [
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                const CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage(
                                    'images/profile_pic.png',
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff25497D),
                                    ),
                                    child: const Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 9,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              "PT grace Gpt",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "How was your virtual consultation with this physio?",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/star.png",
                              color: Colors.grey,
                            ),
                            Image.asset(
                              "images/star.png",
                              color: Colors.grey,
                            ),
                            Image.asset(
                              "images/star.png",
                              color: Colors.grey,
                            ),
                            Image.asset(
                              "images/star.png",
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffDE4589),
                            fixedSize: const Size(double.maxFinite, 40),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const RewardsPoints();
                                },
                              ),
                            );
                          },
                          child: const Text("Submit"),
                        )
                      ]),
                    );
                  },
                );
              },
              child: const Text("Book"),
            ),
          ],
        ),
      ),
    );
  }

  getAppbar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      color: Colors.white,
      child: Row(
        children: [
          const Icon(
            Icons.arrow_back_ios_new,
            size: 15,
          ),
          const SizedBox(width: 10),
          Stack(
            children: [
              const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                  'images/profile_pic.png',
                ),
              ),
              Positioned(
                right: 0,
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff25497D),
                  ),
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(width: 10),
          const Text(
            "PT grace Gpt",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          Image.asset("images/gcall.png"),
          const SizedBox(width: 15),
          Image.asset(
            "images/video.png",
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
