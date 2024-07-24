import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  const Sandbox({super.key});

  @override
  SandboxState createState() => SandboxState();
}

class SandboxState extends State<Sandbox> {
  double _opacity = 1;
  double _margin = 0;
  double _width = 200;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AnimatedContainer(
          duration: const Duration(seconds: 1),
          margin: EdgeInsets.all(_margin),
          width: _width,
          color: _color,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                onPressed: () => setState(() => _margin = 50),
                child: const Text('animate margin'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                child: const Text('animate color'),
                onPressed: () => setState(() => _color = Colors.purple),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                child: const Text('animate width'),
                onPressed: () => setState(() => _width = 400),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                child: const Text('animate opacity'),
                onPressed: () => setState(() => _opacity = 0),
              ),
              AnimatedOpacity(
                duration: const Duration(seconds: 2),
                opacity: _opacity,
                child: const Text(
                  'hide me',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
