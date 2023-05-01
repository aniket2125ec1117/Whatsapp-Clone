import 'package:flutter/material.dart';
import 'package:whatsappclone/responsive/responsive_layout.dart';
import 'package:whatsappclone/screen/mobile_screen_layout.dart';
import 'package:whatsappclone/screen/web_screen_layout.dart';
import 'package:whatsappclone/colors.dart ';

void main(){
  runApp(Whatsapp());
}
class Whatsapp extends StatefulWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor : backgroundColor,
      ),
      home:const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout()),
    );
  }
}
