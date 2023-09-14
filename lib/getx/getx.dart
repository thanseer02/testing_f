import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/container.dart';
class getx extends StatelessWidget {
  const getx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Books',style: TextStyle(fontSize: 30,color: Colors.amber),),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25)

                      ),
                      child: IconButton(onPressed: () {  },icon:Icon(CupertinoIcons.add,color: Colors.white,)  ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(25)

                      ),
                      child: IconButton(onPressed: () {  },icon:Icon(CupertinoIcons.minus,color: Colors.white,)  ),
                    ),

                  ],
                )
              ],
            )
          ],
        ),

      ),
    );
  }
}
