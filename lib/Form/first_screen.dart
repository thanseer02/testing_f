import 'package:flutter/material.dart';
class f1 extends StatefulWidget {
  const f1({super.key});

  @override
  State<f1> createState() => _f1State();
}

class _f1State extends State<f1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: (){
          Navigator.pushNamed(context, '/second');
            }, child: Text('Luanch Scaeen')),
      ),
    );
  }
}
