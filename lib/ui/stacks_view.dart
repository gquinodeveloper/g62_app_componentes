import 'package:flutter/material.dart';

class StacksView extends StatelessWidget {
  const StacksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(218, 217, 219, 1.0),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(218, 217, 219, 1.0),
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.70,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: 60.0,
            left: 130.0,
            child: Container(
              width: 150.0,
              height: 150.0,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(30.0),
                image: const DecorationImage(
                  image: AssetImage("assets/photo.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          /* Container(
            width: double.infinity,
            color: Colors.red,
          ),
          Positioned(
            top: 150.0,
            left: 90.0,
            child: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.yellowAccent,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 180.0,
              height: 180.0,
              color: Colors.green,
            ),
          ), */
        ],
      ),
    );
  }
}
