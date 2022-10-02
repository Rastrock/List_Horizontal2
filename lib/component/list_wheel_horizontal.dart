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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: Column(
                  children:[
                    Flexible(
                    flex: 6,
                    child: ClipRect(
                      child: Container(
                        height: 450,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20) ),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                                image: AssetImage(directoryImage))
                        ),
                      ),
                    ),
                  ),
                     const Flexible(
                       flex: 1,
                       child: SizedBox(
                        height: 5,
                    ),
                     ),
                     Text("Hola"),
                     const SizedBox(
                          height: 5,
                        ),
                    Flexible(
                      flex: 2,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            color: Colors.deepOrange,
                          ),
                        ))
                  ]
                ),
              ),
            );
          },
        ),
      ),
    );
  }
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

