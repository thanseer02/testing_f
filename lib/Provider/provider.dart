import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing/Provider/model.dart';
import 'dart:math';

class provider extends StatefulWidget {
  const provider({super.key});

  @override
  State<provider> createState() => _providerState();
}

class _providerState extends State<provider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name:${context.watch<MyData>().name}',
            style: TextStyle(fontSize: 22),),
            Text('Age:${context.watch<MyData>().age}',
              style: TextStyle(fontSize: 22),),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    final mydata=context.read<MyData>();
                    final random=Random();
                    mydata.name='Tanseer';
                    mydata.age=random.nextInt(30);
                  });

                },
                child: Text('Change',style: TextStyle(fontSize: 22),))


          ],
        ),
      ),
    );
  }
}
