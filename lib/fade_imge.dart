import 'package:flutter/material.dart';
class fade extends StatefulWidget {
  const fade({super.key});

  @override
  State<fade> createState() => _fadeState();
}

class _fadeState extends State<fade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fade Image'),
      ),
      body: Center(
        child: FadeInImage.assetNetwork(
            placeholder: 'Loading',
            image:''),
      ),
    );
  }
}
