import 'package:flutter/material.dart';
import 'package:list_element/component/list_wheel_horizontal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(),
        body: ListWheelHorizontal(height: 450, directory: 'assets/74297472_p0_master1200.jpg',),
      ),
    );
  }
}