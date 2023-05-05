import 'package:client_app/screens/profile_page.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getHeader(),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Briggs Walter",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff08101D),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Software Developer",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff08101D),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.location_on,
                      color: Color(0xff6A6A6A),
                      size: 15,
                    ),
                    Text(
                      "Lagos, Ikeja",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff6A6A6A),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          const Divider(
            thickness: 8,
            height: 4,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 15),
            child: Text(
              "My Rehbox",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Divider(thickness: 1.2),
          rehboxWidget(image: "card", text: "Payment Plan"),
          rehboxWidget(
            image: "award",
            text: "My profile",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ),
              );
            },
          ),
          rehboxWidget(image: "award", text: "Rewards Points"),
          rehboxWidget(image: "settings", text: "Settings"),
          const SizedBox(height: 15),
          const Divider(
            thickness: 8,
            height: 4,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 15),
            child: Text(
              "Contact Support",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Divider(thickness: 1.2),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: const Color(0xffEFEFEF),
                  child: Image.asset('images/instagram.png'),
                ),
                CircleAvatar(
                  backgroundColor: const Color(0xffEFEFEF),
                  child: Image.asset('images/linkedin.png'),
                ),
                CircleAvatar(
                  backgroundColor: const Color(0xffEFEFEF),
                  child: Image.asset('images/facbook.png'),
                ),
                CircleAvatar(
                  backgroundColor: const Color(0xffEFEFEF),
                  child: Image.asset('images/whatsapp.png'),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40),
            child: Divider(
              thickness: 1.2,
            ),
          ),
          const SizedBox(height: 10),
          supportAction(),
          const SizedBox(height: 10),
          supportAction(),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              height: 30,
              width: 91,
              decoration: BoxDecoration(
                color: const Color(0xffDE4589),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/Chat.png"),
                  const SizedBox(width: 5),
                  const Text(
                    "Live Chat",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Column supportAction() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40, right: 20),
          child: Row(
            children: const [
              Text(
                "Rehbox.helpmail@gmail.com",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 40, top: 10),
          child: Divider(
            thickness: 1.2,
          ),
        ),
      ],
    );
  }

  Widget rehboxWidget({String? text, String? image, VoidCallback? onTap}) {
    return Column(
      children: [
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GestureDetector(
            onTap: onTap,
            child: Row(
              children: [
                Image.asset("images/$image.png"),
                const SizedBox(width: 20),
                Text(
                  text!,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 55, top: 10),
          child: Divider(
            thickness: 1.2,
          ),
        ),
      ],
    );
  }

  getHeader() {
    return SizedBox(
      height: 150,
      child: Stack(
        children: [
          Container(
            height: 112,
            color: const Color(0xff0D1A2E),
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Image.asset("images/edit.png"),
              ),
            ),
          ),
          Positioned(
            left: 20,
            bottom: 10,
            child: Stack(
              children: const [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage("images/profile_pic.png"),
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
          )
        ],
      ),
    );
  }
}
