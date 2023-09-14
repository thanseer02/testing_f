import 'package:flutter/material.dart';
class containers extends StatefulWidget {
  const containers({super.key});

  @override
  State<containers> createState() => _containersState();
}

class _containersState extends State<containers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:Column(
            children: [
              ConstrainedBox(
                  constraints:BoxConstraints(
                    minHeight: 100,
                    minWidth: 100,
                    maxHeight: 150,
                    maxWidth: 150
                  ),
              child: Container(
                color: Colors.red,width: 20,height: 50,
                child: FittedBox(
                  child: Text('Hello'),
                ),
              )
                ,),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    color: Colors.red,child: Text('hello',style: TextStyle(fontSize: 33),),),
                  Container(
                    color: Colors.green,child: Column(
                      children: [
                        Text('hello',style: TextStyle(fontSize: 33),),
                        Text('hello',style: TextStyle(fontSize: 33),),
                        Text('hello',style: TextStyle(fontSize: 33),),
                      ],
                    ),),
                  Container(
                    color: Colors.red,child: Column(
                      children: [
                        Text('Good bYe',style: TextStyle(fontSize: 33),),
                        Text('Good bYe',style: TextStyle(fontSize: 33),),
                        Text('Good bYe',style: TextStyle(fontSize: 33),),
                        Text('Good bYe',style: TextStyle(fontSize: 33),),
                        Text('Good bYe',style: TextStyle(fontSize: 33),),
                      ],
                    ),),

                ],
              )
            ],
          ) ),
    );
  }
}
