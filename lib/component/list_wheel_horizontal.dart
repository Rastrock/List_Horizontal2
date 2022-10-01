import 'package:flutter/material.dart';

class ListWheelHorizontal extends StatefulWidget {
  const ListWheelHorizontal({Key? key}) : super(key: key);

  @override
  State<ListWheelHorizontal> createState() => _ListWheelState();
}

class _ListWheelState extends State<ListWheelHorizontal> {

  int _index =0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300, // card height
        child: PageView.builder(
          itemCount: 10,
          controller: PageController(viewportFraction: 0.5, keepPage: true),
          onPageChanged: (int index) => setState(() => _index = index),
          itemBuilder: (_, i) {
            return Transform.scale(
              scale: i == _index ? 1 : 0.7,
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Card ${i+1}',
                  style: TextStyle(fontSize: 32),
                )
              )
            );
          },
        ),
      ),
    );
  }

  /*Card card(){
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Text(
          "Card ${i + 1}",
          style: const TextStyle(fontSize: 32),
        ),
      ),
    );
  }*/

Container leo(){
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
  );}





}



