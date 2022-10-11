import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:like_button/like_button.dart';

import 'booking.dart';
import 'home.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: booking()

      // initialRoute: '/',
      // routes: {
      //   '/': (context) => Login(),
      //   Pagedua.routeName: (context) => Pagedua(),
        
      // },
      // routes: <String, WidgetBuilder>{
      //   '/': (BuildContext context) => new home(),
      //   '/booking': (BuildContext context) => new booking(),
      // },
    );
  }
}
