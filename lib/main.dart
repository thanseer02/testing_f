import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing/Form/first_screen.dart';
import 'package:testing/Provider/model.dart';
import 'package:testing/Provider/provider.dart';
import 'package:testing/custom_Appbar.dart';
import 'package:testing/dio/dio.dart';
import 'package:testing/fade_imge.dart';
import 'package:testing/getx/getx.dart';
import 'package:testing/pageview/home.dart';
import 'package:testing/state%20management/provider/num_provider.dart';
import 'package:testing/state%20management/state_management.dart';

import 'Animation_Container.dart';
import 'Effect_ring.dart';
import 'Form/form.dart';
import 'container.dart';
import 'hero/hero.dart';
import 'ignore/ignore_pointer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => NumberListProvider(),
        child: MaterialApp(
          // initialRoute: '/',
          // routes: {
          //   '/':(context)=>f1(),
          //   '/second':(context)=>form()
          // },
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
            // useMaterial3: true,
          ),
          home: StateExample(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
