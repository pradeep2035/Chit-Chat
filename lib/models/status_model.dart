class StatusModel{
  final String name;
  final String time;
  final String avatar;
  StatusModel({
    required this.name,required this.time,required this.avatar});
}


List <StatusModel> statusData=[
  StatusModel(name:"Rahul",time:"10:00pm",avatar:"https://cdn.hswstatic.com/gif/play/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg"),
  StatusModel(name:"Tanisha", time:"11:00am",avatar:"https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg"),
  StatusModel(name: "Pradeep", time:"9:00am" ,avatar:"https://p1.pxfuel.com/preview/843/695/828/male-model-face-portrait-young-smile-royalty-free-thumbnail.jpg"),
  StatusModel(name: "Ankur", time:"5:00pm" ,avatar:"https://media.istockphoto.com/id/691910455/photo/smiling-businessman-with-brown-bag-walking-in-city.jpg?s=612x612&w=0&k=20&c=5NpgOqGdT-404agHoGsPdPTTQtVTppflZTiKKtUmxm0=" ),
];
