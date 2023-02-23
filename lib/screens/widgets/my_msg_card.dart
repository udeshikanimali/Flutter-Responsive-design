import 'package:flutter/material.dart';
import 'package:test_app/screens/widgets/info.dart';

class MyMsgCard extends StatelessWidget {
  final String message;
  final String date;
  const MyMsgCard({Key? key,required this.message,required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            //color: ,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Stack(
              children: [
                Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 30, top: 5, bottom: 20),
                        child:Text(
                          message,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                        )
                        ),
                        Positioned(
                          bottom: 4,
                          right: 10,
                          child: Row(children: [
                            Text(
                              date,
                              style:const TextStyle(
                                fontSize: 13,
                                color: Colors.white
                              )),
                              const SizedBox(width:5,),
                              const Icon(
                                Icons.done_all,
                                size:20,
                                color:Colors.white
                                )
                          ]),
                        )
              ],
            )),
      ),
    );
  }
}
