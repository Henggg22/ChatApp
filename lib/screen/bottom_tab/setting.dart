import 'package:chat_app/utils/color.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool light = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorUse.background,
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //profile
            Stack(
              children: [
                SizedBox(
                  height: 350,
                  width: double.infinity,
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKZJAaLyU43Xw8VWkiCpbyVNmq8XEJy3lO4A&s',
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  bottom: 10,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Manith',
                        style: TextStyle(
                            color: ColorUse.text,
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '098 77 66 66  @manith123',
                        style: TextStyle(
                            color: Colors.white70,
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'last seen recently',
                        style: TextStyle(
                            color: Colors.white60,
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                )
              ],
            ),
            //title
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              padding: const EdgeInsets.only(top: 20, bottom: 15),
              child: const Text(
                'General',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            //greneral
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorUse.card,
              ),
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: InkWell(
                onTap: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'My Profile',
                          style: TextStyle(
                            color: ColorUse.text,
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white54,
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorUse.card,
              ),
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Notification',
                        style: TextStyle(
                          color: ColorUse.text,
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  Switch.adaptive(
                    value: light,
                    onChanged: (value) {
                      setState(() {
                        light = true;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorUse.card,
              ),
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.dark_mode,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Dark Mode',
                        style: TextStyle(
                          color: ColorUse.text,
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  Switch.adaptive(
                    value: light,
                    onChanged: (value) {
                      setState(() {
                        light = true;
                      });
                    },
                  ),
                ],
              ),
            ),
            //title
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              padding: const EdgeInsets.only(top: 20, bottom: 15),
              child: const Text(
                'Others',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            //greneral
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorUse.card,
              ),
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: InkWell(
                onTap: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.language,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Change Language',
                          style: TextStyle(
                            color: ColorUse.text,
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    Text(
                      'English',
                      style: TextStyle(
                        color: ColorUse.text,
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorUse.card,
              ),
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: InkWell(
                onTap: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.privacy_tip,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Policy & Privacy',
                          style: TextStyle(
                            color: ColorUse.text,
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white54,
                    )
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
