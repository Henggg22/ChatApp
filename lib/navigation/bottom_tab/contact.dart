import 'package:chat_app/controllers/chatJson.dart';
import 'package:chat_app/screen/homescreen/send_chat_screen.dart';
import 'package:chat_app/utils/color.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  void _saveNewItem() {
    // Get the values from the text fields
    final firstname = _firstnameController.text;
    final lastname = _lastnameController.text;
    final phoneNumber = _phoneNumberController.text;

    // Perform the logic to save the new item
    print('Saving new item: $firstname, $lastname, $phoneNumber');

    // Clear the text fields
    _firstnameController.clear();
    _lastnameController.clear();
    _phoneNumberController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUse.background,
      appBar: AppBar(
        forceMaterialTransparency: true,
        toolbarHeight: 160,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(0))),
        title: Column(
          children: [
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //profile
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKZJAaLyU43Xw8VWkiCpbyVNmq8XEJy3lO4A&s',
                        height: 55.0,
                        width: 55.0,
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
                // icon add contact
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorUse.card,
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 25,
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            width: double.infinity,
                            color: ColorUse.card,
                            height: 400, // Set the desired height of the modal
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Add New Contact',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Poppins",
                                          color: ColorUse.text),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Icon(
                                        Icons.close,
                                        color: Colors.white,
                                        size: 25,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 16.0),
                                TextField(
                                  style: const TextStyle(
                                    color: ColorUse.text,
                                    fontFamily: "Poppins",
                                    fontSize: 14,
                                  ),
                                  controller: _firstnameController,
                                  decoration: const InputDecoration(
                                      hintText: 'First Name',
                                      hintStyle: TextStyle(
                                          color: ColorUse.subtext,
                                          fontFamily: "Poppins",
                                          fontSize: 14),
                                      focusColor: Colors.white),
                                ),
                                const SizedBox(height: 16.0),
                                TextField(
                                  style: const TextStyle(
                                    color: ColorUse.text,
                                    fontFamily: "Poppins",
                                    fontSize: 14,
                                  ),
                                  controller: _lastnameController,
                                  decoration: const InputDecoration(
                                      hintText: 'Last Name',
                                      hintStyle: TextStyle(
                                          color: ColorUse.subtext,
                                          fontFamily: "Poppins",
                                          fontSize: 14),
                                      focusColor: Colors.white),
                                ),
                                const SizedBox(height: 16.0),
                                TextField(
                                  keyboardType: TextInputType.phone,
                                  style: const TextStyle(
                                    color: ColorUse.text,
                                    fontFamily: "Poppins",
                                    fontSize: 14,
                                  ),
                                  controller: _phoneNumberController,
                                  decoration: const InputDecoration(
                                      hintText: 'Phone Number',
                                      hintStyle: TextStyle(
                                          color: ColorUse.subtext,
                                          fontFamily: "Poppins",
                                          fontSize: 14),
                                      focusColor: Colors.white),
                                ),
                                const SizedBox(height: 16.0),
                                Container(
                                  height: 50,
                                  margin: const EdgeInsets.only(top: 30),
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      _saveNewItem();
                                      Navigator.of(context)
                                          .pop(); // Close the modal
                                    },
                                    child: const Text(
                                      'Create Contact',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "Poppins",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                )
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
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.filter_list,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      // Implement the button's functionality here
                      print('Search button pressed');
                    },
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
            ...ChatList().smgData.map((item) {
              return item["contact"] == true
                  ? InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SendChatScreen(
                              name: item["name"].toString(),
                              avatar: item["avatar"].toString(),
                              message: item["message"].toString(),
                              online: item["online"],
                              time: item["time"].toString(),
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.network(
                                      item["avatar"].toString(),
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.cover),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item["name"].toString(),
                                        style: TextStyle(
                                          color: ColorUse.text,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        item["online"] == true
                                            ? 'Active'
                                            : 'Last seen recently',
                                        style: TextStyle(
                                          color: item["online"] == true
                                              ? Colors.green
                                              : ColorUse.subtext,
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const Text(
                              '098 88 99 88',
                              style: TextStyle(
                                color: ColorUse.subtext,
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  : SizedBox.shrink();
            }),
          ],
        ),
      ),
    );
  }
}
