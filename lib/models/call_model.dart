import 'package:flutter/material.dart';
class CallModel{
  final String name;
  final String time;
  final String avatar;
  final  Icon callType;
  static Icon callReceived=Icon(Icons.call_received,color:Colors.green,size: 15,);
  static Icon callMissed=Icon(Icons.call_missed,color:Colors.red,size: 15,);
  static Icon callOutgoing=Icon(Icons.call_received,color:Colors.green,size: 15,);
  CallModel({
    required this.name,required this.time,required this.avatar,required this.callType});
}


List <CallModel> callData=[
  CallModel(name:"Rahul",time:"10:00pm",callType:CallModel.callMissed,avatar:"https://cdn.hswstatic.com/gif/play/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg"),
  CallModel(name:"Tanisha", time:"11:00am",callType:CallModel.callOutgoing,avatar:"https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg"),
  CallModel(name: "Pradeep", time:"9:00am",callType:CallModel.callReceived ,avatar:"https://p1.pxfuel.com/preview/843/695/828/male-model-face-portrait-young-smile-royalty-free-thumbnail.jpg"),
  CallModel(name: "Ankur", time:"5:00pm",callType:CallModel.callOutgoing ,avatar:"https://media.istockphoto.com/id/691910455/photo/smiling-businessman-with-brown-bag-walking-in-city.jpg?s=612x612&w=0&k=20&c=5NpgOqGdT-404agHoGsPdPTTQtVTppflZTiKKtUmxm0=" ),
  CallModel(name: "Mark", time:"11:30am",callType:CallModel.callMissed ,avatar:"https://www.joe.co.uk/uploads/2023/06/Screenshot-2023-06-30-at-09.28.13.png"),
  CallModel(name: "Stan", time:"11:30am",callType:CallModel.callMissed,avatar:"https://media.istockphoto.com/id/906808234/photo/handsome-man.jpg?s=612x612&w=0&k=20&c=Ec8IY-ETslaS56vmO77BJyEOpPM1hzJlLbs6xeKRoAc=" ),
  CallModel(name: "Steve",  time:"1:30pm",callType: CallModel.callMissed,avatar:"https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg" ),
  CallModel(name: "Bucher",  time:"10:47am",callType: CallModel.callMissed,avatar:"https://www.nme.com/wp-content/uploads/2020/09/karl-urban.jpg" ),
  CallModel(name: "Homelander",  time:"7:22pm",callType:CallModel.callOutgoing ,avatar:"https://www.denofgeek.com/wp-content/uploads/2020/10/homelander.jpg?fit=1014%2C570"  ),
  CallModel(name: "Lucifer",  time:"3:30pm",callType:CallModel.callOutgoing ,avatar:"https://sportshub.cbsistatic.com/i/2022/07/03/884f47a4-9036-4619-b2e9-656b5857ee58/lucifer-season-6-dvd-tom-ellis.jpg"),
  CallModel(name: "Moru", time:"11:30pm",callType:CallModel.callMissed,avatar:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq7dDqaApR0N2jhw8SQglWnx41KEY1P1D1cg&usqp=CAU"),
  CallModel(name: "KT",time:"6:22am",callType:CallModel.callMissed,avatar:"https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/19818628/2022/9/6/ec27eee6-d613-4423-8e0f-007aea1603c31662468109188Shirts1.jpg"),
];