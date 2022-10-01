import 'package:flutter/material.dart';

class ListWheelHorizontal extends StatefulWidget {
  late double? heightCard;
  late String directoryImage;
  ListWheelHorizontal({Key? key, required double? height, required String directory }) : super(key: key){
    heightCard = height;
    directoryImage = directory;
  }


  @override
  State<ListWheelHorizontal> createState() => _ListWheelState(heightCard, directoryImage);
}

class _ListWheelState extends State<ListWheelHorizontal> {
  late double? heightCard;
  late String directoryImage;
  _ListWheelState(double? height, String directory){
    directoryImage = directory;
    if(height != null){
      heightCard = height;
    }
    else{
      heightCard = 350;
    }
  }
  int _index =0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: heightCard, // card height
        child: PageView.builder(
          itemCount: 10,
          controller: PageController(viewportFraction: 0.5, keepPage: true),
          onPageChanged: (int index) => setState(() => _index = index),
          itemBuilder: (_, i) {
            return Transform.scale(
              scale: i == _index ? 1 : 0.7,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(directoryImage))
                      ),
                    ),
                    const Text('Si')
                  ],
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



