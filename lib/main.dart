import 'package:flutter/material.dart';
import 'package:list_element/component/list_wheel_horizontal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  List<String> image = [
    "images/MonaChina.jpg",
    "images/nemaa.png",
    "images/MonaChina.jpg",
    "images/nemaa.png",
    "images/MonaChina.jpg",
    "images/nemaa.png",
  ];

  List<String> text = [
    "Name cat 1",
    "Name cat 2",
    "Name cat 3",
    "Name cat 4",
    "Name cat 5",
    "Name cat? 6",
  ];
  List<Widget> button = [
    ElevatedButton(onPressed: (){}, child: Container(color: Colors.purple, width: 200)),
    ElevatedButton(onPressed: (){}, child: Container(color: Colors.blue, width: 200)),
    ElevatedButton(onPressed: (){}, child: Container(color: Colors.red, width: 200)),
    ElevatedButton(onPressed: (){}, child: Container(color: Colors.black, width: 200)),
    ElevatedButton(onPressed: (){}, child: Container(color: Colors.orange, width: 200)),
    ElevatedButton(onPressed: (){}, child: Container(color: Colors.greenAccent, width: 200)),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(),
        body: ListWheelHorizontal(height: 450, directory: image, text: text, button: button),
      ),
    );
  }
}