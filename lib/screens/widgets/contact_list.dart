import 'package:flutter/material.dart';
import 'package:test_app/screens/widgets/mobile_chat_screen.dart';

import 'info.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: ((context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MobileChatScreen(),
                    ));
                  }),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      title: Text(info[index]['name'].toString(),
                          style: const TextStyle(fontSize: 18)),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(info[index]['message'].toString(),
                            style: const TextStyle(fontSize: 15)),
                      ),
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            NetworkImage(info[index]['profilePic'].toString()),
                      ),
                      trailing: Text(
                        info[index]['time'].toString(),
                        style:
                            const TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  indent: 85,
                )
              ],
            );
          })),
      // child:ListView(
      //   shrinkWrap: true,
      //   children: [
      //     Column(
      //       children: [
      //         InkWell(
      //           onTap: (){},
      //           child: Padding(
      //             padding: const EdgeInsets.only(bottom:8.0),
      //             child: ListTile(
      //               title:Text('Samadhi Perera',style:TextStyle(fontSize:18)),
      //               subtitle: Text('Hey!',style: TextStyle(fontSize: 15),),
      //               leading: CircleAvatar(
      //                 radius: 30,
      //                 backgroundImage: NetworkImage(
      //                     'https://media.istockphoto.com/id/1289220545/es/foto/hermosa-mujer-sonriendo-con-los-brazos-cruzados.jpg?s=612x612&w=is&k=20&c=olUSz3gkuPNNWBPgxxyafU2sxC2axV1YRuy1LNC9oz4='
      //               )),
      //               trailing: Text(
      //                 '19.50 pm',style: TextStyle(fontSize: 13,color: Colors.grey),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),

      //   ],
      // )
    );
  }
}
