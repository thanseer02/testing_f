import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing/state%20management/provider/num_provider.dart';
class second extends StatefulWidget {
 const second({super.key,});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
        builder: (context,numberlist,child)=>Scaffold(
          appBar: AppBar(
            title:const Text('State Management'),
            backgroundColor: Colors.amber,
            actions: [
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const second()));
              }, icon:const Icon(Icons.arrow_forward_ios_outlined))
            ],
          ),
          floatingActionButton: FloatingActionButton(
            // backgroundColor: Colors.amber,
            onPressed: (){
              numberlist.add();

            },
            child:const Icon(Icons.add),),
          body: SafeArea(
              child:SizedBox(
                height: double.infinity,
                child: Column(
                  children: [
                   const SizedBox(height: 20,),
                    Text('Total Count = ${numberlist.number.last}',style:const TextStyle(fontSize: 22),),
                    Expanded(
                      child: ListView.builder(
                          itemCount: numberlist.number.length,
                          itemBuilder: (context,index){
                            return ListTile(
                              title: Text(numberlist.number[index].toString()),
                            );
                          }),
                    ),
                  ],
                ),

              ) ),
        )
    );
  }
}
