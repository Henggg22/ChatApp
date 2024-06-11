import 'package:chat_app/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileuserScreen extends StatefulWidget {
  const ProfileuserScreen({super.key});

  @override
  State<ProfileuserScreen> createState() => _ProfileuserScreenState();
}

class _ProfileuserScreenState extends State<ProfileuserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorUse.background,
        appBar: AppBar(
          foregroundColor: ColorUse.text,
          backgroundColor: Colors.transparent,
        ),
        //body 
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //profile
              Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKZJAaLyU43Xw8VWkiCpbyVNmq8XEJy3lO4A&s',
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Manith',
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorUse.text,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      'Last seen recently',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white54,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorUse.card,
                    borderRadius: BorderRadius.circular(10)),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //mobile
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mobile',
                          style: TextStyle(
                            color: ColorUse.subtext,
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.0),
                          child: Text(
                            '+855 98 77 66 66',
                            style: TextStyle(
                              color: ColorUse.text,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                              border: Border(
                            bottom: BorderSide(
                              color: Colors.white10,
                              width: 1.0,
                            ),
                          )),
                          child: SizedBox(
                            width: double.infinity,
                            height: 6.0,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //username
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Username',
                          style: TextStyle(
                            color: ColorUse.subtext,
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.0),
                          child: Text(
                            '@manirh123',
                            style: TextStyle(
                              color: ColorUse.text,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
