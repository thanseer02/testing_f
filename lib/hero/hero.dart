import 'package:flutter/material.dart';
import 'package:testing/hero/hero_dt.dart';
class hero extends StatefulWidget {
  const hero({super.key});

  @override
  State<hero> createState() => _heroState();
}

class _heroState extends State<hero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: SafeArea(
        child:
    GestureDetector(
    onTap: () {
    Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => hero_dt(),
    ));
    },
    child: Hero(
    tag: 'heroTag',
    child: Container(
    width: 100,
    height: 100,
        child: Image.asset('assets/img1.jpeg')),
    ),
    ),
        // Container(
        //   height: double.infinity,
        //   child: ListView.builder(itemBuilder: (context,index){
        //     return InkWell(
        //       onTap: (){
        //         Navigator.push(context, MaterialPageRoute(builder: (context)=>
        //             hero_dt(img:'assets/img1.jpeg' , text: 'item $index')));
        //       },
        //       child: ListTile(
        //         leading: Hero(
        //             tag: 'dash',
        //             child: Image.asset('assets/img1.jpeg')),
        //         title: Text('item $index'),
        //       ),
        //     );
        //   }),
        // ),
      ),
    );
  }
}
