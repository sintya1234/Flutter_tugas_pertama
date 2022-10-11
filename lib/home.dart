import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:like_button/like_button.dart';

import 'booking.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: Scaffold(
        appBar: AppBar(title: Text("Destinasi"),  backgroundColor: Colors.purple),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 1),
                  colors: <Color>[
                    Color(0xff1f005c),
                    Color(0xff5b0060),
                    Color(0xff870160),
                    Color(0xffac255e),
                    Color(0xffca485c),
                    Color(0xffe16b5c),
                    Color(0xfff39060),
                    Color(0xffffb56b),
                  ], // Gradien dari web ini https://learnui.design/tools/gradient-generator.html
                  tileMode: TileMode.mirror,
                ),
              ),
            ),
            Container(
                child: Column(
              children: [
                Container(
                  child: Image.asset("images/view1.jpg"),
                ),
                Container(
                    padding: EdgeInsets.all(6),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          buildCard("images/view2.jpg"),
                          const SizedBox(width: 12),
                          buildCard("images/view3.jpg"),
                          const SizedBox(width: 12),
                          buildCard("images/view5.jpg"),
                          const SizedBox(width: 12),
                          buildCard("images/view1.jpg"),
                          const SizedBox(width: 12),
                        ],
                      ),
                    )),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Text('Taman Ungu',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),

                Container(
                    child: Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              //backgroundColor: Color.fromRGBO(121, 85, 72, 1),
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Stick",
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.red,
                            ),
                          )),
                    ],
                  ),
                )),

                Align(
              alignment: AlignmentDirectional.topEnd,
              child: LikeButton(),
            ),

                FloatingActionButton.extended(
                  backgroundColor: const Color(0xff03dac6),
                  foregroundColor: Colors.black,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return booking();
                    }
                     ) );
            
                  },
                
                  icon: Icon(Icons.add),
                  label: Text('booking'),  
                )
                //  margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
              ],
            )),
// Container(
//  alignment: Alignment.topRight,
// ),
            
          ],
        ),
      ),
    );
  }

  Widget buildCard(String nama) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "$nama",
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
        ],
      );
}

class LikeButtonWidget extends StatefulWidget {
  const LikeButtonWidget({super.key});

  @override
  State<LikeButtonWidget> createState() => _LikeButtonWidgetState();
}

class _LikeButtonWidgetState extends State<LikeButtonWidget> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    final double size = 40;

    return LikeButton(
      size: size,
      isLiked: isLiked,
    );
  }
}
