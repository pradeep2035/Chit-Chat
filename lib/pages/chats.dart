import 'package:chit_chat/models/chat_model.dart';
import 'package:chit_chat/pages/chat_details.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:chatData.length,
      itemBuilder:(context,index)=> Column(                           // itembuilder is the callbackfunction
        children:[
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading:CircleAvatar(radius:25,  backgroundImage:NetworkImage(chatData[index].avatar)),
            title: Text(chatData[index].name,style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle:Text(chatData[index].message,style: TextStyle(color: Colors.grey),),
            trailing:Text(chatData[index].time,style: TextStyle(color: Colors.grey,fontSize:13),),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>ChatDetails(
                name:chatData[index].name,                            // used name and avatar as arguments to pass to chatDeatils constructor made in chatdetails class
                avatar:chatData[index].avatar,                        // chatData[index] accesses the chat model object at the given index from the chatData list.
                                                                        // .name and .avatar access the respective properties of the chat model object.
              )));
            },
          )
        ]
      ));
  }
}