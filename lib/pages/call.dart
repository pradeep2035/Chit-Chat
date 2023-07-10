import 'package:chit_chat/models/call_model.dart';
import 'package:flutter/material.dart';


class Call extends StatefulWidget {
  const Call({super.key});

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:callData.length,
      itemBuilder:(context,index)=> Column(                           // itembuilder is the callbackfunction
        children:[
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading:CircleAvatar(radius:25,  backgroundImage:NetworkImage(callData[index].avatar)),
            title: Text(callData[index].name,style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle:Row(
              children: [ 
                Container(child:callData[index].callType),
                Text(callData[index].time,style: TextStyle(color: Colors.grey,fontSize:13),),
              ],
            ),
            trailing:Icon(Icons.call,color:Colors.purple,) ,
          )
        ]
      )
      );
  }
}