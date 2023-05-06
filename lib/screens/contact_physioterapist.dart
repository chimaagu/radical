import 'package:client_app/screens/chat_page.dart';
import 'package:client_app/screens/profile_details.dart';
import 'package:flutter/material.dart';

class ContactPhysioTherapistScreen extends StatelessWidget {
  const ContactPhysioTherapistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
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
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      'Contact Physiotherapist',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const SearchContainer(),
                const SizedBox(height: 10),
                const Text(
                  'Nearby',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 40),
                const PhysioDetails(),
                const SizedBox(height: 5),
                const Divider(
                  thickness: 0.2,
                  color: Colors.black,
                ),
                //Book consultation section
                const SizedBox(height: 5),
                //Book consultation button
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileDetailsScreen(),
                        ),
                      );
                    },
                    child: const ConsultationButtonsWidget()),
                const SizedBox(height: 5),
                const Divider(
                  thickness: 0.2,
                  color: Colors.black,
                ),
                const SizedBox(height: 40),
                const PhysioDetails(),
                const SizedBox(height: 5),
                const Divider(
                  thickness: 0.2,
                  // color: appPrimaryLargeTextColor,
                ),
                //Book consultation section
                const SizedBox(height: 5),
                //Book consultation button
                const ConsultationButtonsWidget(),
                const SizedBox(height: 5),
                const Divider(
                  thickness: 0.2,
                  // color: appPrimaryLargeTextColor,
                ),

                const SizedBox(height: 40),

                const PhysioDetails(),
                const SizedBox(height: 5),
                const Divider(
                  thickness: 0.2,
                  // color: appPrimaryLargeTextColor,
                ),
                //Book consultation section
                const SizedBox(height: 5),
                //Book consultation button
                const ConsultationButtonsWidget(),
                const SizedBox(height: 5),
                const Divider(
                  thickness: 0.2,
                  // color: appPrimaryLargeTextColor,
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

class PhysioDetails extends StatelessWidget {
  const PhysioDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: const PhysiotherapistListSection(
        imageData: 'images/profile_pic.png',
        physioName: 'PT Grace Ose',
        physioOnlineStatus: 'Online',
        physioDetails:
            'Donec cursus metus, orci, faucibus dolor, \nenim. Sed mus mattis aliquet blandit tortor, \ncongue amet massa. Proin et est fringilla \nurna pretium auctor habitant. Maecenas \nvolutpat nulla nunc sit id nisl a elit.',
        physioSpecialty: 'Neurology',
        physioLocation: 'Lagos',
        // ratingsColor: appSecondColor,
        noneRatingsColor: Colors.grey,
      ),
    );
  }
}

class ConsultationButtonsWidget extends StatelessWidget {
  const ConsultationButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
              color: Color(0xff25497D), borderRadius: BorderRadius.circular(5)),
          child: Text(
            'Book a Consultation',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatPage(),
                ));
          },
          child: Container(
            margin: const EdgeInsets.only(right: 20),
            height: 30,
            width: 95,
            decoration: BoxDecoration(
                color: Color(0xffFF95C4),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.chat_outlined,
                  size: 12,
                  // color: appSecondColor,
                ),
                const SizedBox(width: 5),
                Text(
                  'Chat',
                  style: TextStyle(),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class PhysiotherapistListSection extends StatelessWidget {
  const PhysiotherapistListSection({
    super.key,
    required this.physioName,
    required this.physioOnlineStatus,
    required this.imageData,
    required this.physioDetails,
    required this.physioSpecialty,
    required this.physioLocation,
    this.onlineStatusColor,
    this.ratingsColor,
    this.noneRatingsColor,
  });

  final String physioName;
  final String physioOnlineStatus;
  final String imageData;
  final String physioDetails;
  final String physioSpecialty;
  final String physioLocation;
  final Color? onlineStatusColor;
  final Color? ratingsColor;
  final Color? noneRatingsColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(imageData),
          ),
        ),
        const SizedBox(width: 10),
        //text section
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //header row
            Row(
              children: [
                Text(
                  physioName,
                  style: TextStyle(),
                ),
                const SizedBox(width: 140),
                //online status row
                Row(
                  children: [
                    Container(
                      height: 5,
                      width: 5,
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      physioOnlineStatus,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.green,
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            //main description text
            //sizedbox use should be reviewed. Text wasn't breaking
            SizedBox(
              child: Text(
                physioDetails,
                style: TextStyle(),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(height: 15),
            //location/ratings section
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  physioSpecialty,
                  style: TextStyle(),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 5,
                  width: 5,
                  decoration: const BoxDecoration(
                      color: Colors.grey, shape: BoxShape.circle),
                ),
                const SizedBox(width: 10),
                Text(
                  physioLocation,
                  style: TextStyle(),
                ),
                const SizedBox(width: 90),
                //ratings section
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    children: [
                      Icon(Icons.star, color: ratingsColor, size: 10),
                      Icon(Icons.star, color: ratingsColor, size: 10),
                      Icon(Icons.star, color: ratingsColor, size: 10),
                      Icon(Icons.star, color: ratingsColor, size: 10),
                      Icon(Icons.star, color: noneRatingsColor, size: 10),
                    ],
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 50,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFDBDBDB)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.location_on, color: Colors.grey, size: 18),
          const SizedBox(width: 10),
          Flexible(
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter location e.g Lagos',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF969696),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
