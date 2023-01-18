import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/pages/chats_page.dart';
import 'package:flutter_whatsapp_clone/pages/homepage.dart';
import 'package:flutter_whatsapp_clone/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Color(0xFF075E55),
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      routes: {
        "/": (context) => const HomePage(),
        "settingsPage": (context) => const SettingsPage(),
        "chatPage": (context) => const ChatPage(),
      },
    );
  }
}
