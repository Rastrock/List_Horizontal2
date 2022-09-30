import 'package:flutter/material.dart';

class ListWheelHorizontal extends StatefulWidget {
  const ListWheelHorizontal({Key? key}) : super(key: key);

  @override
  State<ListWheelHorizontal> createState() => _ListWheelState();
}

class _ListWheelState extends State<ListWheelHorizontal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(12),
        physics: PageScrollPhysics(),
        children: [
          Container(
            margin: const EdgeInsets.all(20) ,
            height: 100,
            width: 200,
            color: Colors.red,
          ),
          Container(
            margin: const EdgeInsets.all(20) ,
            height: 100,
            width: 200,
            color: Colors.red,
          ),
          Container(
            margin: const EdgeInsets.all(20) ,
            height: 100,
            width: 200,
            color: Colors.red,
          ),
          Container(
            margin: const EdgeInsets.all(20) ,
            height: 100,
            width: 200,
            color: Colors.red,
          ),
          Container(
            margin: const EdgeInsets.all(20) ,
            height: 100,
            width: 200,
            color: Colors.red,
          ),



        ],
      ),
    );
  }
}



