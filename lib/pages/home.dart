import 'package:chit_chat/camera.dart';
import 'package:chit_chat/pages/call.dart';
import 'package:chit_chat/pages/chats.dart';
import 'package:chit_chat/pages/status.dart';
import 'package:chit_chat/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  bool _iconBool = false;
  late TabController _tabController;
  // Icon _iconglight = Icon(Icons.wb_sunny);
  // Icon _icondark = Icon(Icons.nights_stay);
  // making toogle function to change state means to light to dark theme state and vice versa
  void _toogleButton() {
    setState(() {
      _iconBool = !_iconBool;
    });
  }
  ThemeData getThemeData() {
    return _iconBool ? Themes.dark : Themes.light;
  }

  @override
  void initState() {
    _tabController = TabController(length: 4,initialIndex:1, vsync:this)     // this intial index used because at index position 1  chats is assigned a we want to be show it first when app opens  
    ..addListener(() {
      setState(() {});
    });
    super.initState();
  }

  // making list for tabs like call,msg and status.
  final List<Tab> topTabs = [Tab(icon:Icon(Icons.camera)),
                             Tab(text: "CHATS"),
                             Tab(text: "STATUS"),
                             Tab(text: "CALLS")];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chit Chat",style: GoogleFonts.fasthand(fontSize: 28,fontWeight: FontWeight.bold),), 
      actions: [
        IconButton(
            onPressed: _toogleButton,
            icon: Icon(
              Icons.wb_sunny,
              color: Colors.white,
              size: 18,
            ),
            ),
            IconButton(
            onPressed:(){},
            icon: Icon(
              Icons.search_rounded,
              color: Colors.white,
              size: 20,
            ),
            ),
            IconButton(
            onPressed:(){},
            icon: Icon(
              Icons.settings,
              color: Colors.white,
              size: 20,
            ),
            )
      ],
      bottom:TabBar(
        controller: _tabController,
        indicatorColor: Colors.white,
        tabs:topTabs) ,),
        body: TabBarView(
          controller: _tabController,
          children: [
            CameraScreen(),
            ChatPage(),
            Status(),
            Call(),

          ],
        ),
    );
  }
}
