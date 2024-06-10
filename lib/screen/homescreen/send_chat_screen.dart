import 'package:chat_app/screen/homescreen/profile_user.dart';
import 'package:chat_app/utils/color.dart';
import 'package:flutter/material.dart';

class SendChatScreen extends StatefulWidget {
  const SendChatScreen({super.key});

  @override
  State<SendChatScreen> createState() => _SendChatScreenState();
}

class _SendChatScreenState extends State<SendChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUse.background,
      //appbar
      appBar: AppBar(
        leadingWidth: 45,
        foregroundColor: Colors.white,
        backgroundColor: ColorUse.card,
        title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ProfileuserScreen()),
            );
          },
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                    'https://images.unsplash.com/photo-1565160657870-c332a2259da4?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y2hpbmElMjBnaXJsfGVufDB8fDB8fHww',
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover),
              ),
              const SizedBox(width: 10),
              const Column(
                children: [
                  Text('Elizabeth',
                      style: TextStyle(
                          color: ColorUse.text,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                  SizedBox(height: 3),
                  Text('Active Now',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.call),
            onPressed: () {},
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      //body
      body: Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                // the profile show
                Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                          'https://images.unsplash.com/photo-1565160657870-c332a2259da4?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y2hpbmElMjBnaXJsfGVufDB8fDB8fHww',
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Ellizabeth',
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorUse.text,
                          fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      'Start your conversation here',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white54,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                // chat from
                Padding(
                  padding: const EdgeInsets.only(right: 60),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                            'https://images.unsplash.com/photo-1565160657870-c332a2259da4?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y2hpbmElMjBnaXJsfGVufDB8fDB8fHww',
                            height: 30,
                            width: 30,
                            fit: BoxFit.cover),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              decoration: BoxDecoration(
                                  color: ColorUse.card,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
                                'Hello b :(',
                                style: TextStyle(
                                    color: ColorUse.text,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            const SizedBox(height: 3),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              decoration: BoxDecoration(
                                  color: ColorUse.card,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
                                'Can we start it again ?',
                                style: TextStyle(
                                    color: ColorUse.text,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                // chat to
                Padding(
                  padding: const EdgeInsets.only(left: 60, top: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10),
                            decoration: BoxDecoration(
                                color: ColorUse.card,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Row(
                              children: [
                                Text(
                                  'huh ?',
                                  style: TextStyle(
                                      color: ColorUse.text,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '7:48 PM',
                                  style: TextStyle(
                                      color: Colors.white30,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.done_all_outlined,
                                    size: 12, color: Colors.white60)
                              ],
                            ),
                          ),
                          const SizedBox(height: 3),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10),
                            decoration: BoxDecoration(
                                color: ColorUse.card,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Row(
                              children: [
                                Text(
                                  'Start for what ?',
                                  style: TextStyle(
                                      color: ColorUse.text,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '7:48 PM',
                                  style: TextStyle(
                                      color: Colors.white30,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.done_all_outlined,
                                    size: 12, color: Colors.white60)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      //bottom tab
      bottomNavigationBar: Container(
        height: 55,
        color: ColorUse.card,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.photo_library_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.mic,
                size: 27,
              ),
              onPressed: () {},
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: ColorUse.background,
                      borderRadius: BorderRadius.circular(50)),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: const Expanded(
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      style: TextStyle(
                          color: ColorUse.text,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Wrtite you message',
                        hintStyle: TextStyle(
                          color: Colors.white38,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                        alignLabelWithHint: true,
                      ),
                    ),
                  )),
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
