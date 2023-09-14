import 'package:flutter/material.dart';
class pages extends StatefulWidget {
  const pages({super.key});

  @override
  State<pages> createState() => _pagesState();
}

class _pagesState extends State<pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.horizontal,
          children: [

            Container(
              height: 150,
              width: double.infinity,
              color: Colors.red,
            ),
            Container(
              height: 200,
              color: Colors.green,
            ),
            Container(
              height: 200,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              color: Colors.amber,
            )

          ],
        ),
      ),
    );
  }
}
