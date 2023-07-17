import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text("hii"),
                  Image(
                    image: AssetImage("assets/images/img1.png"),
                  )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
