import 'package:flutter/material.dart';

class ListWheelHorizontal extends StatefulWidget {
  const ListWheelHorizontal({Key? key}) : super(key: key);

  @override
  State<ListWheelHorizontal> createState() => _ListWheelState();
}

class _ListWheelState extends State<ListWheelHorizontal> {

  PageController controller = PageController(initialPage: 0,keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      color: Colors.white,

      child: PageView(
        scrollDirection: Axis.horizontal,
        controller: PageController(
          viewportFraction: 0.5,
        ),
        pageSnapping: true,

        children: [
          Container(
            margin: const EdgeInsets.all(20) ,
            height: 100,
            width: 200,
            child: const Material(
              elevation: 20,
              color: Colors.teal,
            ),
          ),

          Container(
            margin: const EdgeInsets.all(20) ,
            height: 100,
            width: 200,
            child: const Material(
              elevation: 20,
              color: Colors.purpleAccent,
            ),
          ),

          Container(
            margin: const EdgeInsets.all(20) ,
            height: 100,
            width: 200,
            child: const Material(
              elevation: 20,
              color: Colors.black,
            ),
          ),

          Container(
            margin: const EdgeInsets.all(20) ,
            height: 100,
            width: 200,
            child: const Material(
              elevation: 20,
              color: Colors.blue,
            ),
          ),

          Container(
            margin: const EdgeInsets.all(20) ,
            height: 100,
            width: 200,
            child: const Material(
              elevation: 20,
              color: Colors.black,
            ),
          ),

          Container(
            margin: const EdgeInsets.all(20) ,
            height: 100,
            width: 200,
            child: const Material(
              elevation: 20,
              color: Colors.yellowAccent,
            ),
          ),

          Container(
            margin: const EdgeInsets.all(20) ,
            height: 100,
            width: 200,
            child: const Material(
              elevation: 20,
              color: Colors.black,
            ),
          ),

          Container(
            margin: const EdgeInsets.all(20) ,
            height: 100,
            width: 200,
            child: const Material(
              elevation: 20,
              color: Colors.yellowAccent,
            ),
          ),

          Container(
            margin: const EdgeInsets.all(20) ,
            height: 100,
            width: 200,
            child: const Material(
              elevation: 20,
              color: Colors.black,
            ),
          ),

          Container(
            margin: const EdgeInsets.all(20) ,
            height: 100,
            width: 200,
            child: const Material(
              elevation: 20,
              color: Colors.yellowAccent,
            ),
          ),

          Container(
            margin: const EdgeInsets.all(20) ,
            height: 100,
            width: 200,
            child: const Material(
              elevation: 20,
              color: Colors.black,
            ),
          ),

        ],
      ),
    );
  }
}




