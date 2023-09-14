import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
class Container_Animation extends StatefulWidget {
  const Container_Animation({super.key});

  @override
  State<Container_Animation> createState() => _Container_AnimationState();
}

class _Container_AnimationState extends State<Container_Animation> {
  double _width=100;
  double _height=100;
  Color _color =Colors.black;
  BorderRadiusGeometry _borderRadius=BorderRadius.circular(8);
  bool _visible=true;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: Column(
        children: [
          Center(
            child: AnimatedContainer(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius
              ),
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
            ),
          ),
          SizedBox(height: 50,),
          Center(
            child: AnimatedOpacity(
              child: Container(
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                    color: _color,
                    borderRadius: _borderRadius
                ),
              ),
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              opacity: _visible? 1.0 :0.0
            ),
          ),

        ],
      ),
    ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.black,
              onPressed: (){
                setState(() {
                  final random=Random();
                  _width=random.nextInt(500).toDouble();
                  _height=random.nextInt(500).toDouble();
                  _color=Color.fromRGBO(
                      random.nextInt(256),
                      random.nextInt(256),
                      random.nextInt(256),
                      1,
                  );
                    _borderRadius=BorderRadius.circular(  random.nextInt(256).toDouble(),);

                });
              },
              child: Icon(CupertinoIcons.play,color: Colors.amber,),
          ),
          SizedBox(height: 10,),
          FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: (){
              setState(() {
               _visible=!_visible;
              });
            },
            child: Icon(CupertinoIcons.forward_end_alt,color: Colors.amber,),
          ),

        ],
      ),
    );
  }
}
