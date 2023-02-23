import 'package:flutter/material.dart';
import 'package:test_app/screens/widgets/contact_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length:3,
      child: Scaffold(appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF25D366),
        title: const Text('WhatsApp', 
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          ),
          centerTitle: false,
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.search,color:Colors.white)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,color:Colors.white))
          ],
          bottom: const TabBar(
            labelStyle:TextStyle(
              fontWeight:FontWeight.bold
            ),
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            tabs: [
            Tab(text: 'Chats',),
            Tab(text: 'Status',),
            Tab(text: 'Calls',),
          ],),
        ),
        body:const ChatList(),
        floatingActionButton:FloatingActionButton(onPressed: (){}
        ,backgroundColor: Colors.white,
        child: const Icon(Icons.comment,color:Colors.white),
        )
        ),
      );
  }
}
