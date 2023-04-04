import 'package:flutter/material.dart';
import 'package:way/style/colors.dart';

class Message {
  final String sender;
  final String time;
  final String message;
  final bool isRead;
  final String avatar;

  Message({
    required this.sender,
    required this.time,
    required this.message,
    required this.isRead,
    required this.avatar,
  });
}

class MessageScreen extends StatelessWidget {
  final Message message;
  const MessageScreen({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () => Navigator.pop(context),
        // ),
        elevation: 0,
        backgroundColor: CustomColors.transparent,
        iconTheme: const IconThemeData(color: CustomColors.secondaryblack),
        centerTitle: true,
        title: Text(
          message.sender,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              reverse: true,
              children: [
                MessageBubble(
                  messagebox:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id malesuada neque.',
                  isSentByMe: false,
                  time: 'Yesterday 10:00 PM',
                ),
                MessageBubble(
                  messagebox:
                      'Donec euismod augue nec libero varius, vel ornare turpis dignissim.',
                  isSentByMe: true,
                  time: 'Yesterday 10:05 PM',
                ),
                MessageBubble(
                  messagebox:
                      'Curabitur at nibh eget velit imperdiet sodales. Ut porta est et sem iaculis hendrerit.',
                  isSentByMe: false,
                  time: 'Yesterday 10:10 PM',
                ),
                MessageBubble(
                  messagebox:
                      'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
                  isSentByMe: true,
                  time: 'Yesterday 10:15 PM',
                ),
                MessageBubble(
                  messagebox:
                      'Fusce convallis justo eu enim vestibulum, vitae tincidunt sapien tempor.',
                  isSentByMe: false,
                  time: 'Yesterday 10:20 PM',
                ),
                MessageBubble(
                  messagebox:
                      'Sed euismod turpis id odio lacinia, ac pretium velit dapibus.',
                  isSentByMe: true,
                  time: 'Yesterday 10:25 PM',
                ),
                MessageBubble(
                  messagebox:
                      'Vivamus dapibus turpis vel tellus ultricies, quis laoreet enim ultricies.',
                  isSentByMe: false,
                  time: 'Yesterday 10:30 PM',
                ),
                MessageBubble(
                  messagebox:
                      'Sed sit amet ipsum eu massa fermentum posuere in ut diam. Vivamus sit amet pulvinar elit.',
                  isSentByMe: true,
                  time: 'Yesterday 10:35 PM',
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Type a message',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String messagebox;
  final bool isSentByMe;
  final String time;

  MessageBubble(
      {required this.messagebox, required this.isSentByMe, required this.time});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color:
                isSentByMe ? Colors.grey[300] : Theme.of(context).accentColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft:
                  !isSentByMe ? Radius.circular(0) : Radius.circular(12),
              bottomRight:
                  isSentByMe ? Radius.circular(0) : Radius.circular(12),
            ),
          ),
          width: 140,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Column(
            crossAxisAlignment:
                isSentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                messagebox,
                style: TextStyle(
                  color: isSentByMe ? Colors.black : Colors.white,
                ),
                textAlign: isSentByMe ? TextAlign.end : TextAlign.start,
              ),
              if (isSentByMe)
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    time,
                    style: TextStyle(
                      fontSize: 7,
                      color: isSentByMe ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              if (!isSentByMe)
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    time,
                    style: TextStyle(
                      fontSize: 7,
                      color: isSentByMe ? Colors.black : Colors.white,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
