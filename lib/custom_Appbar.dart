import 'package:flutter/material.dart';
class cappbar extends StatefulWidget {
  const cappbar({super.key});

  @override
  State<cappbar> createState() => _cappbarState();
}

class _cappbarState extends State<cappbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.amber,
            title: Text('Custom App bar'),
            floating: true,
            // flexibleSpace: Placeholder(),
            expandedHeight: 300,
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) => ListTile(
            leading: CircleAvatar(),
            title: Text('User $index',style: TextStyle(color: Colors.white),)),
            childCount: 100
          )
          )

        ],
      ),
    );
  }
}
