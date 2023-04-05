import 'package:flutter/material.dart';
import 'package:way/app/pages/personal_screens/userProfile/messages/message.dart';
import 'package:way/style/colors.dart';

class PersonalMessageInbox extends StatefulWidget {
  const PersonalMessageInbox({Key? key}) : super(key: key);

  @override
  _PersonalMessageInboxState createState() => _PersonalMessageInboxState();
}

class _PersonalMessageInboxState extends State<PersonalMessageInbox> {
  TextEditingController searchController = TextEditingController();
  List<Message> _messages = [
    Message(
      sender: 'Freakys Shop',
      time: '2:30 PM',
      message: 'Hey there!',
      isRead: true,
      avatar: 'assets/car.jpg',
    ),
    Message(
      sender: 'Tattoo Shop',
      time: '1:45 PM',
      message: 'Can you send me the report?',
      isRead: true,
      avatar: 'assets/car.jpg',
    ),
    Message(
      sender: 'Hair Salon',
      time: '11:20 AM',
      message: 'How was your weekend?',
      isRead: false,
      avatar: 'assets/car.jpg',
    ),
    Message(
      sender: 'Spa',
      time: '10:00 AM',
      message: 'Good morning!',
      isRead: true,
      avatar: 'assets/car.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF000000)),
        title: const Text('Messages',
            style: TextStyle(
              color: Color(0xFF000000),
              fontWeight: FontWeight.w600,
              fontSize: 16,
            )),
      ),
      body: Container(
        //     // color: CustomColors.primaryBlue,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: SizedBox(
                  height: 50,
                  child: TextFormField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: ('Search'),
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                      // prefixIcon:
                      //   Icon(
                      //     Icons.search,
                      //     color: Color.fromARGB(255, 99, 34, 34),
                      //     size: 5,
                      //   ),

                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 25.0, top: 3),
                        child: Icon(Icons.search,
                            color: Colors.black87.withOpacity(0.8)),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Color(0xffEFEFEF),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 20.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // child: SingleChildScrollView(

              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _messages.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    // onTap: () {/
                    // Handle message item tap
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) =>
                    //         ChatScreen(message: _messages[index]),
                    //   ),
                    // );
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              PersonalMessageScreen(message: _messages[index]),
                        ),
                      );
                    },
                    // },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 16),
                      decoration: BoxDecoration(
                        color: _messages[index].isRead
                            ? Colors.white
                            : Colors.grey.shade100,
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey.shade300,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 28,
                            // backgroundImage:
                            // Image.asset(_messages[index].avatar).image,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _messages[index].sender,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  _messages[index].message,
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontWeight: _messages[index].isRead
                                        ? FontWeight.normal
                                        : FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  _messages[index].time,
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
