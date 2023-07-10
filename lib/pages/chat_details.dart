import 'package:flutter/material.dart';

class ChatDetails extends StatefulWidget {
  final String name;        // declared instance in chatdetalis class
  final String avatar;
   // creating constructor
  const ChatDetails({Key? key, required this.name,required this.avatar}) :super (key: key);

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        titleSpacing: 0.0,
        title:Row(
          children: [
            CircleAvatar(backgroundImage: NetworkImage(widget.avatar)),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                widget.name,
                style: TextStyle(fontSize: 20),),
            )
          ],
        ),
        actions: [
          IconButton(onPressed:(){}, icon:Icon(Icons.call)),
          IconButton(onPressed:(){}, icon:Icon(Icons.video_call)),
          IconButton(onPressed:(){}, icon:Icon(Icons.more_vert)),
        ],

      ),
      body:Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration:InputDecoration(
                hintText: 'Message',
                border: OutlineInputBorder(borderRadius:BorderRadius.circular(100.0),
                //borderSide: BorderSide(color: Colors.purple),
              ),
              iconColor: Colors.purple,
              icon:Icon(Icons.emoji_emotions),
              suffix:Icon(Icons.send),
              suffixIconColor: Colors.purple,
              focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100.0),    
              borderSide: BorderSide(color: Colors.purple),       // to make the border color purple
            ),
          ),
              ),
        ),
    )
    );
  }
}
