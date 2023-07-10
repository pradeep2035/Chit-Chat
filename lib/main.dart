import 'package:chit_chat/splash.dart';
import 'package:chit_chat/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chit Chat',
      debugShowCheckedModeBanner: false,
      theme:Themes.light,
      darkTheme :Themes.dark,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}

