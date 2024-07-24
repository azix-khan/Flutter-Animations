import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  const Heart({super.key});

  @override
  HeartState createState() => HeartState();
}

class HeartState extends State<Heart> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.favorite,
        color: Colors.grey[400],
        size: 30,
      ),
      onPressed: () {},
    );
  }
}
