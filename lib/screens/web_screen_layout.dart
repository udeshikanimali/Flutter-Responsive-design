import 'package:flutter/material.dart';
import 'package:test_app/screens/widgets/chat_list.dart';
import 'package:test_app/screens/widgets/web_chat_app_bar.dart';
import 'package:test_app/screens/widgets/web_profile_bar.dart';
import 'package:test_app/screens/widgets/web_search_bar.dart';

import 'widgets/contact_list.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children:const [
                  WebprofileBar(),
                  WebSearchBar(),
                  ChatList()
                ],
              ),
            ),
          ),
          //web screen
          Container(
            width:MediaQuery.of(context).size.width*0.75,
            color: Colors.grey,
            child:Column(
              children: [
                WebChatAppBar(),
                Expanded(child: ChatList_2()),
                Container(
                  height: MediaQuery.of(context).size.height*0.07,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.red)
                    ),
                    color:Colors.white
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.emoji_emotions_outlined,color: Colors.grey,)),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.attach_file,color: Colors.grey,)),
                      Expanded(
                        child: Padding(padding: EdgeInsets.only(left:10,right:15
                        ),
                        child:TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.grey,
                            filled:true,
                            hintText:'Type a message',
                            border: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(20),
                              borderSide:const BorderSide(
                                width: 0,
                                style:BorderStyle.none
                              )
                            ),
                            contentPadding:const EdgeInsets.only(left: 20)
                          ),
                        )
                        ),
                        
                      ),
                      IconButton(onPressed: (){}, icon: const Icon(
                        Icons.mic,
                        color: Colors.grey,
                      ))
                    ],
                  ),
                ),
              ],
            )
          )
      ]),
    );
  }
}
