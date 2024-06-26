import 'package:chat_app/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileuserScreen extends StatefulWidget {
  final String name;
  final String avatar;
  const ProfileuserScreen({ super.key,
     required this.name, 
     required this.avatar,
     });

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
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: InkWell(
                  onTap: () {},
                  child: const Text(
                    'Edit',
                    style: TextStyle(
                      color: ColorUse.text,
                      fontFamily: 'Poppins',
                      fontSize: 12,
                    ),
                  )),
            )
          ],
        ),
        // body
        body: SingleChildScrollView(
          child: Column(
            children: [
              //profile
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                       widget.avatar,
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover),
                  ),
                  const SizedBox(height: 10),
                   Text(
                    widget.name,
                    style: const TextStyle(
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
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(horizontal: 15),
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
                            '@manith123',
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
              ),
              Container(
                color: ColorUse.card,
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Media',
                        style: TextStyle(
                            color: ColorUse.text,
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const DecoratedBox(
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
                    ),
                    GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      crossAxisSpacing: 2.0,
                      mainAxisSpacing: 2.0,
                      shrinkWrap: true,
                      children: List.generate(
                        15, // Number of items
                        (index) => Center(
                          child: Image.network(
                              'https://storage.prompt-hunt.workers.dev/clgoqpxsx0005jt08k976wx7e_1'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
        // body: CustomScrollView(
        //   slivers: [
        //     SliverAppBar(
        //       pinned: true,
        //       expandedHeight: 200.0,
        //       flexibleSpace: FlexibleSpaceBar(
        //         title: Text('My App'),
        //         background: Image.network(
        //           'https://via.placeholder.com/150',
        //           fit: BoxFit.cover,
        //         ),
        //       ),
        //     ),
        //     SliverList(
        //       delegate: SliverChildBuilderDelegate(
        //         (BuildContext context, int index) {
        //           return ListTile(
        //             title: Text('Item $index'),
        //           );
        //         },
        //         childCount: 50,
        //       ),
        //     ),
        //   ],
        // )
        );
  }
}
