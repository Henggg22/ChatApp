import 'package:chat_app/screen/homescreen/send_chat_screen.dart';
import 'package:chat_app/utils/color.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUse.background,
      //body
      appBar: AppBar(
        forceMaterialTransparency: true,
        toolbarHeight: 160,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(0))),
        title: Column(
          children: [
            const SizedBox(height: 10.0),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKZJAaLyU43Xw8VWkiCpbyVNmq8XEJy3lO4A&s',
                    height: 50.0,
                    width: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Meng Sokhav',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '098 77 66 66',
                        style: TextStyle(
                            color: Colors.white60,
                            fontSize: 12,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 40.0,
              margin: const EdgeInsets.only(top: 20.0),
              decoration: BoxDecoration(
                  color: ColorUse.card,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.search_rounded,
                    color: Colors.grey,
                    size: 24.0,
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        hintText: 'Search...',
                        hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Poppins'),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10.0),
                        alignLabelWithHint: true,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        backgroundColor: ColorUse.background,
      ),
      //body
      body: SingleChildScrollView(
        child: Column(
          children: [
            //online status
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int i = 0; i < 6; i++)
                      Container(
                        margin: const EdgeInsets.only(right: 15),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100.0),
                                  child: Image.network(
                                    'https://qph.cf2.quoracdn.net/main-qimg-e51ff159f3d077f96e69dccfca3ba017-lq',
                                    width: 55,
                                    height: 55,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: 2,
                                  right: 0,
                                  child: Container(
                                    width: 12,
                                    height: 12,
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Nith',
                              style: TextStyle(
                                  color: ColorUse.text,
                                  fontFamily: 'Poppins',
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            for (int i = 0; i < 2; i++)
              //get chat
              InkWell(
                onTap: () {
                  // Perform the action when the widget is tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SendChatScreen()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100.0),
                                child: Image.network(
                                  'https://qph.cf2.quoracdn.net/main-qimg-e51ff159f3d077f96e69dccfca3ba017-lq',
                                  width: 55,
                                  height: 55,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 2,
                                right: 0,
                                child: Container(
                                  width: 12,
                                  height: 12,
                                  decoration: const BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Elli Nith',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: ColorUse.text,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 7.0),
                                Text(
                                  'You still love her right ? ',
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontFamily: 'Poppins',
                                      color: Colors.white54,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              '11:30 PM',
                              style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.grey,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(height: 7.0),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6.0, vertical: 2.0),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: const Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: ColorUse.text,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            //seen
            for (int i = 0; i < 2; i++)
            InkWell(
              onTap: () {
                // Perform the action when the widget is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SendChatScreen()),
                );
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100.0),
                              child: Image.network(
                                'https://qph.cf2.quoracdn.net/main-qimg-e51ff159f3d077f96e69dccfca3ba017-lq',
                                width: 55,
                                height: 55,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 2,
                              right: 0,
                              child: Container(
                                width: 12,
                                height: 12,
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Elli Nith',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: ColorUse.text,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 7.0),
                              Text(
                                'You still love her right ? ',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Poppins',
                                    color: Colors.white54,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '11:30 PM',
                            style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.grey,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 7.0),
                          Icon(
                            Icons.done_all_rounded,
                            color: Colors.white60,
                            size: 14,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      //bottom
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.sms),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_rounded),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

