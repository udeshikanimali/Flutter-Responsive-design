import 'package:flutter/material.dart';
import 'package:test_app/screens/widgets/info.dart';

class SenderMsgCard extends StatelessWidget {
  final String message;
  final String date;
  const SenderMsgCard({Key? key,required this.message,required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            color: Colors.black,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Stack(
              children: [
                Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 30, top: 5, bottom: 20),
                        child:Text(
                          message,style: const TextStyle(fontSize: 16,color:Colors.white),
                        )
                        ),
                        Positioned(
                          bottom: 2,
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
                                color:Colors.black
                                )
                          ]),
                        )
              ],
            )),
      ),
    );
  }
}
