import 'package:client_app/screens/contact_physioterapist.dart';
import 'package:flutter/material.dart';

class ProfileDetailsScreen extends StatelessWidget {
  const ProfileDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 166,
                width: MediaQuery.of(context).size.width,
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(13, 26, 46, 1)),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Positioned(
                  top: 20,
                  //Column contents
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      TopBackButtonRow(),
                      SizedBox(height: 60),
                      //image and online status
                      ImageAndOnlineSection(),
                      SizedBox(height: 30),
                      Text(
                        'Grace Ose',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF0D1A2E)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Cardio-Respiratory Physiotherapist',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF969696)),
                      ),
                      SizedBox(height: 7),
                      Text(
                        '5 years experience',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF969696)),
                      ),
                      SizedBox(height: 7),
                      RatingIcons(),
                      SizedBox(height: 30),
                      ConsultationButtonsWidget(),
                      SizedBox(height: 20),
                      LocationIconPlace(),
                      SizedBox(height: 20),
                      SizedBox(
                        child: Text(
                          'Elementum a viverra donec sit at nam metus ac vitae pulvinar semper ac sit id tempor interdum enim risus consectetur facilisi venenatis scelerisque pulvinar lectus nunc eu facilisis viverra malesuada '
                          'aliquam odio euismod congue enim scelerisque dignissim feugiat purus mi consequat felis, sed lacus, l'
                          'ectus elit enim elementum mauris arcu et odio vitae sed porta diam at urna ultrices venenatis feugiat scelerisque non leo elit duis enim cursus amet fames pulvinar amet, arcu, nisl convallis'
                          'feugiat dignissim tincidunt pellentesque dignissim nisi, at dignissim eget cras dui diam '
                          'convallis augue malesuada diam non vel, scelerisque tortor ut donec arcu in egestas',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF6A6A6A)),
                          maxLines: 5,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class LocationIconPlace extends StatelessWidget {
  const LocationIconPlace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.location_on,
          size: 13,
        ),
        Text(
          'Lagos',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

class RatingIcons extends StatelessWidget {
  const RatingIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.star,
          size: 18,
          color: Colors.grey,
        ),
        Icon(
          Icons.star,
          size: 18,
          color: Colors.grey,
        ),
        Icon(
          Icons.star,
          size: 18,
          color: Colors.grey,
        ),
        Icon(
          Icons.star,
          size: 18,
          color: Colors.grey,
        ),
        Icon(
          Icons.star,
          size: 18,
          color: Colors.grey,
        ),
      ],
    );
  }
}

class ImageAndOnlineSection extends StatelessWidget {
  const ImageAndOnlineSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            const CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage(
                'images/profile_pic.png',
              ),
            ),
            Positioned(
              left: 60,
              child: Container(
                height: 20,
                width: 20,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.green),
                child: const Icon(
                  Icons.check,
                  size: 15,
                ),
              ),
            )
          ],
        ),
        const Spacer(),
        Row(
          children: [
            Container(
              height: 5,
              width: 5,
              decoration: const BoxDecoration(
                  color: Colors.green, shape: BoxShape.circle),
            ),
            const SizedBox(width: 5),
            const Text(
              'Online',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            )
          ],
        ),
      ],
    );
  }
}

class TopBackButtonRow extends StatelessWidget {
  const TopBackButtonRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.only(left: 7),
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                color: Color(0xffFF95C4),
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
          ),
          const SizedBox(width: 15),
          Text(
            'Profile Details',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
