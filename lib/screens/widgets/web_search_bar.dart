import 'package:flutter/material.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.06,
      width: MediaQuery.of(context).size.width*0.25,
      padding: const EdgeInsets.all(5),
      decoration:const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey)
        )
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey,
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.search,size:20),
            ),
            hintStyle: const TextStyle(fontSize: 14),
            hintText: 'Search or start new chat',
            border:OutlineInputBorder(
              borderRadius:BorderRadius.circular(20),
              borderSide: const BorderSide(
                width:0,
                style:BorderStyle.none
              ) 
            ),
            contentPadding: const EdgeInsets.all(10)
        ),
      ),
    );
  }
}
