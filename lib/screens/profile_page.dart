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
              )
            ],
          ),
        ),
      ),
    );
  }
}
