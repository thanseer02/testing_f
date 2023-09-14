import 'package:flutter/material.dart';

class ignore_pointer extends StatefulWidget {
  const ignore_pointer({super.key});

  @override
  State<ignore_pointer> createState() => _ignore_pointerState();
}

class _ignore_pointerState extends State<ignore_pointer> {
  bool pointer=true;
  bool _pointer=false;
  void _togglePoniter(){
    setState(() {
      pointer=!pointer;
    });
  }
  void togglePoniter(){
    setState(() {
      _pointer=!_pointer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: IgnorePointer(
              ignoring: !pointer,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.black,
                child: Center(child: Text('${pointer}'.toUpperCase(),style: TextStyle(fontSize: 35,color: Colors.amber,fontWeight: FontWeight.bold),)),
              ),

            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: AbsorbPointer(
              absorbing: !_pointer,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.black,
                child: Center(child: Text('${_pointer}'.toUpperCase(),style: TextStyle(fontSize: 35,color: Colors.amber,fontWeight: FontWeight.bold),)),
              ),

            ),
          ),

          ElevatedButton(
              onPressed: _togglePoniter,
              child: Text(pointer ? 'Disable Pointer':'Enable Pointer')),
          ElevatedButton(
              onPressed: togglePoniter,
              child: Text(_pointer ? 'Disable':'Enable')),

        ],
      ),
    );
  }
}
