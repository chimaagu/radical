import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                    "My Profile",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: const [
                  Text(
                    "Progress report",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  )
                ],
              ),
              const SizedBox(height: 15),
              Container(
                height: 15,
                width: 315,
                // width: double.maxFinite,
                decoration: BoxDecoration(
                  color: const Color(0xffA4C9FF),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  clipBehavior: Clip.none,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xff0D1A2E),
                  ),
                  child: const Center(
                    child: Text(
                      "30% complete",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        border: Border.all(color: Colors.red),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/profile_pic.png"),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Briggs Walter",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff08101D),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Software Developer",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff6A6A6A),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Email",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff08101D),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "StephanieBriggs@gmai,com",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D1A2E),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Fullname",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff08101D),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Stephanie Briggs",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D1A2E),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Date of Birth",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff08101D),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "DD/MM/YY",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D1A2E),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Phone Number",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff08101D),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "08122678392",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D1A2E),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Address ",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff08101D),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Ojota, Lagos",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D1A2E),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffDE4589),
                  fixedSize: const Size(double.maxFinite, 40),
                ),
                onPressed: () {},
                child: const Text("Save Changes"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
