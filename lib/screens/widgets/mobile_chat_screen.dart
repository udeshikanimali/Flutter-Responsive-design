import 'package:flutter/material.dart';
import 'package:test_app/screens/widgets/chat_list.dart';

import 'info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.black,
      title: Text(info[0]['name'].toString(),
      ),
      centerTitle: false,
      actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.video_call)),
         IconButton(onPressed: (){}, icon: const Icon(Icons.call)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
      ],
      ),
      body:Column(
        children: [
          Expanded(child: ChatList_2()),
          TextField(
            decoration: InputDecoration(
              filled:true,
              fillColor:Colors.white,
              prefixIcon: const Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.emoji_emotions,color:Colors.grey),
              ),
              suffixIcon:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.camera_alt,color:Colors.grey),
                  Icon(Icons.attach_file,color:Colors.grey),
                  Icon(Icons.money,color:Colors.grey),
                ],
              ),
              ),
              hintText: 'Type a message',
              border: OutlineInputBorder(
                borderRadius:BorderRadius.circular(20),
                borderSide:const BorderSide(
                  width:0,
                  style:BorderStyle.none
                )
                 ),
                 contentPadding: const EdgeInsets.all(10)
            ),
          )
        ],
      )
    );
  }
}
