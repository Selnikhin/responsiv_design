import 'package:flutter/material.dart';
import 'package:responsiv_design/responsive/Desktop_body.dart';
import 'package:responsiv_design/responsive/Mobile_body.dart';
import 'package:responsiv_design/responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //полная ширина окна с которым имеется работа
   // final currentWidth  = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ResponsiveLayout(
        mobile: MobileBody(),
        desktop: DesktopBody(),
      ),
      // backgroundColor:  currentWidth < 600 ? Colors.red : Colors.green,// задает цвет в зависимости от размера
      //
      // body: Center(
      //   child: Text(currentWidth.toString()),// отображает тикущию ширину на экране
      // ),
    );
  }
}
