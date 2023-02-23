import 'package:flutter/material.dart';
import 'package:test_app/screens/widgets/info.dart';
import 'package:test_app/screens/widgets/my_msg_card.dart';

import 'sender_msg_card.dart';

class ChatList_2 extends StatelessWidget {
  const ChatList_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMsgCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        }
        return SenderMsgCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
      },
    );
  }
}
