import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing/state%20management/provider/num_provider.dart';
import 'package:testing/state%20management/second_page.dart';

class StateExample extends StatefulWidget {
  const StateExample({super.key});

  @override
  State<StateExample> createState() => _StateExampleState();
}

class _StateExampleState extends State<StateExample> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Consumer<NumberListProvider>(
        builder: (context, numberlist, child) => Scaffold(
              appBar: AppBar(
                title: const Text('State Management'),
                backgroundColor: Colors.amber,
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => second()));
                      },
                      icon: const Icon(Icons.arrow_forward_ios_outlined))
                ],
              ),
              floatingActionButton: FloatingActionButton(
                // backgroundColor: Colors.amber,
                onPressed: () {
                  numberlist.add();
                },
                child: const Icon(Icons.add),
              ),
              body: SafeArea(
                  child: SizedBox(
                height: double.infinity,
                child: width < 600
                    ? Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Total Count = ${numberlist.number.last}',
                            style: const TextStyle(fontSize: 22),
                          ),
                          Expanded(
                            child: ListView.builder(
                          itemCount: numberlist.number.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text(
                                      numberlist.number[index].toString()),
                                );
                              }),
                          ),
                        ],
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Total Count = ${numberlist.number.last}',
                            style: const TextStyle(fontSize: 22),
                          ),
                          Expanded(
                            child: GridView.builder(
                                gridDelegate:
                                const  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 10),
                                itemCount: numberlist.number.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    title: Text(
                                        numberlist.number[index].toString()),
                                  );
                                }),
                          ),
                        ],
                      ),
              )),
            ));
  }
}
