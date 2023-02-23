import 'package:flutter/material.dart';

class WebprofileBar extends StatelessWidget {
  const WebprofileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF25D366),
      height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*0.25,
      padding:const EdgeInsets.all(10),
      // decoration: const BoxDecoration(
      //   border: Border(
      //     right:BorderSide(color: Colors.red)
      //   )
      // ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        CircleAvatar(
          backgroundImage: NetworkImage('https://media.istockphoto.com/id/1289220545/es/foto/hermosa-mujer-sonriendo-con-los-brazos-cruzados.jpg?s=612x612&w=is&k=20&c=olUSz3gkuPNNWBPgxxyafU2sxC2axV1YRuy1LNC9oz4=',
          
                    ),radius: 30,
        ),
        Row(
          children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.comment,color:Colors.white)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,color:Colors.white))
          ],
        ),
        
      ],)
    );
  }
}