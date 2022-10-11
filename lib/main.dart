import 'package:flutter/material.dart';
import 'package:list_element/component/list_wheel_horizontal.dart';
import 'package:list_element/model/model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);


  List<String> image = [
    "images/salta.jpg",
    "images/city1.jpg",
    "images/city2.jpg",
    "images/city1.jpg",
    "images/nemaa.png",
    "images/MonaChina.jpg",
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
    ElevatedButton(onPressed: (){}, child: Container(color: Colors.purple, width: 150)),
    ElevatedButton(onPressed: (){}, child: Container(color: Colors.blue, width: 150)),
    ElevatedButton(onPressed: (){}, child: Container(color: Colors.red, width: 150)),
    ElevatedButton(onPressed: (){}, child: Container(color: Colors.black, width: 150)),
    ElevatedButton(onPressed: (){}, child: Container(color: Colors.orange, width: 150)),
    ElevatedButton(onPressed: (){}, child: Container(color: Colors.greenAccent, width: 150)),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(),
        body: ListWheelHorizontal(height: 500,directory: image, text: text, button: button),
      ),
    );
  }
}