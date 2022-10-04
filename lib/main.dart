import 'package:flutter/material.dart';
import 'package:list_element/component/list_wheel_horizontal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  List<String> image = [
    "images/cat1.jpg",
    "images/cat2.jpg",
    "images/cat3.jpg",
    "images/cat4.jpg",
    "images/cat5.jpg",
    "images/pajaro.jpg"
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
    ElevatedButton(onPressed: (){}, child: Container(color: Colors.purple)),
    ElevatedButton(onPressed: (){}, child: Container(color: Colors.blue)),
    ElevatedButton(onPressed: (){}, child: Container(color: Colors.red)),
    ElevatedButton(onPressed: (){}, child: Container(color: Colors.black)),
    ElevatedButton(onPressed: (){}, child: Container(color: Colors.orange)),
    ElevatedButton(onPressed: (){}, child: Container(color: Colors.greenAccent)),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(),
        body: ListWheelHorizontal(height: 350, directory: image, text: text, button: button),
      ),
    );
  }
}