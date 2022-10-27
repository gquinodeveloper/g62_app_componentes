import 'package:flutter/material.dart';

class AvatarView extends StatelessWidget {
  const AvatarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Avatars"),
        actions: const [
          Icon(Icons.notification_important),
          SizedBox(width: 15.0),
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://i.pinimg.com/474x/a1/d2/59/a1d259fb970f23539b4d513cc2c438be.jpg",
            ),
          ),
          SizedBox(width: 15.0),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://i.pinimg.com/474x/a1/27/64/a12764da371c29a6a1587139ab275434.jpg",
            ),
            const CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage(
                "assets/photo.jpeg",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
