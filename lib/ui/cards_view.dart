import 'package:flutter/material.dart';

class CardsView extends StatelessWidget {
  const CardsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          top: 20.0,
          left: 15.0,
          right: 15.0,
        ),
        child: Column(
          children: [
            Card(
              color: Colors.white,
              shadowColor: Colors.amber,
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: SizedBox(
                width: double.infinity,
                height: 200.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.network(
                    "https://i.pinimg.com/474x/6a/97/2c/6a972cf173e0d1ac8f6e6e5881c7a03d.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 200.0,
              margin: const EdgeInsets.only(top: 30.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20.0),
                image: const DecorationImage(
                  image: AssetImage("assets/photo.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: const [
                  Text(
                    "Este es mi titulo",
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              /*  child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "assets/photo.jpeg",
                  fit: BoxFit.cover,
                ),
              ), */
            ),
            Container(
              width: 80.0,
              height: 80.0,
              margin: const EdgeInsets.only(top: 30.0),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
            GestureDetector(
              onTap: () {
                print("Click Buttom");
              },
              onLongPress: () {
                print("Click onLongPress");
              },
              onDoubleTap: () {
                print("Click onDoubleTap");
              },
              child: Container(
                width: double.infinity,
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.orange,
                      Colors.pink,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
