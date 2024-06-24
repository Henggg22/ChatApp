import 'package:chat_app/screen/homescreen/profile_user.dart';
import 'package:chat_app/utils/color.dart';
import 'package:flutter/material.dart';

class SendChatScreen extends StatefulWidget {
  final String name;
  final String avatar;
  final String message;
  final bool online;
  final String time;
  const SendChatScreen({
    super.key,
    required this.name,
    required this.avatar,
    required this.message,
    required this.online,
    required this.time,
  });

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
                child: Image.network(widget.avatar,
                    height: 40, width: 40, fit: BoxFit.cover),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.name,
                      style: const TextStyle(
                          color: ColorUse.text,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                  const SizedBox(height: 3),
                  if (widget.online == true)
                    const Text('Active Now',
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
                      child: Image.network(widget.avatar,
                          height: 80, width: 80, fit: BoxFit.cover),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.name,
                      style: const TextStyle(
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(widget.avatar,
                          height: 30, width: 30, fit: BoxFit.cover),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10),
                            decoration: BoxDecoration(
                              color: ColorUse.card,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            
                            child: Container(
                              margin: EdgeInsets.only(right: 40),
                              child: Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                alignment: WrapAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      widget.message,
                                      style: const TextStyle(
                                        color: ColorUse.text,
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    widget.time,
                                    style: const TextStyle(
                                      color: Colors.white30,
                                      fontSize: 10,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 3),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),

      //bottom tab
      floatingActionButton: Container(
        height: 55,
        margin: EdgeInsets.only(top: 40),
        width: double.infinity,
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
