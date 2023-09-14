import 'package:flutter/material.dart';
class hero_dt extends StatefulWidget {
   hero_dt({super.key,
  // required this.img,required this.text
  });
  // var img,text;
  @override
  State<hero_dt> createState() => _hero_dtState();
}

class _hero_dtState extends State<hero_dt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(widget.text),
        leading: Text('Hero'),
      ),
      body: Center(
        child:
    GestureDetector(
    onTap: () {
    Navigator.of(context).pop();
    },
    child: Hero(
    tag: 'heroTag',
    child: Container(
    width: 300, // Larger size for the second screen
    height: 300, // Larger size for the second screen
        child: Image.asset('assets/img1.jpeg',fit: BoxFit.cover,)),
    ),
    ),
        // InkWell(
        //   onTap: (){
        //     Navigator.pop(context);
        //   },
        //   child: Container(
        //     height: 300,
        //     width: 300,
        //     child: Hero(
        //         tag: 'dash',
        //         child: Image.asset(widget.img,fit: BoxFit.cover,)),
        //   ),
        ),

    );
  }
}
