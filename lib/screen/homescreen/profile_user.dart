import 'package:chat_app/utils/color.dart';
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
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Container(
      //       color: Colors.red,
      //       child: Column(
      //         children: [
      //           ClipRRect(
      //             borderRadius: BorderRadius.circular(100),
      //             child: Image.network(
      //               'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKZJAaLyU43Xw8VWkiCpbyVNmq8XEJy3lO4A&s',
      //               height: 80.0,
      //               width: 80.0,
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //           const SizedBox(
      //             height: 10,
      //           ),
      //           const Text(
      //             'Manith',
      //             style: TextStyle(
      //                 color: ColorUse.text,
      //                 fontFamily: 'Poppins',
      //                 fontSize: 16,
      //                 fontWeight: FontWeight.w600),
      //           ),
      //           const SizedBox(
      //             height: 2,
      //           ),
      //           const Text(
      //             'Last seen recently',
      //             style: TextStyle(
      //                 color: ColorUse.subtext,
      //                 fontFamily: 'Poppins',
      //                 fontSize: 12,
      //                 fontWeight: FontWeight.w400),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Column(
      //       children: [
      //       ],
      //     )
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
