import 'package:flutter/material.dart';
import 'package:testing/pageview/pages.dart';
class pageview extends StatefulWidget {
  const pageview({super.key});

  @override
  State<pageview> createState() => _pageviewState();
}

class _pageviewState extends State<pageview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Container(
            height: 200,
              width: double.infinity,
            child:pages()

          ),
        ),
      ),
    );
  }
}
