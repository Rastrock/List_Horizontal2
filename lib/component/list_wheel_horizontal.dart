import 'dart:math';

import 'package:flutter/material.dart';

class ListWheelHorizontal extends StatefulWidget{
  late double? heightCard;
  late List<Cards> listCards;
  ListWheelHorizontal({Key? key, required double? height, required List<Cards> cards}) : super(key: key){
    heightCard = height;
    listCards = cards;
  }


  @override
  State<ListWheelHorizontal> createState() => _ListWheelState(heightCard, listCards);

}

class _ListWheelState extends State<ListWheelHorizontal> {
  static late double? heightCard;
  //static late double? _opacity;
  late List<Cards> listCards;
  _ListWheelState(double? height, List<Cards> cards){
    listCards = cards;
    if(height != null){
      heightCard = height;
    }
    else{
      heightCard = 350;
    }
  }

  final _controller = PageController(
    viewportFraction: 0.5,
    keepPage: true
  );

  double currentPage = 0.0;

  void _listener(){
    setState(() {
      currentPage = _controller.page!;
    });
  }

  @override
  void initState(){
    super.initState();
    _controller.addListener(_listener);
  }

  @override
  void dispose(){
    _controller.removeListener(_listener);
    _controller.dispose();
    super.dispose();
  }

  //int _index =0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: heightCard, // card height
        child: PageView.builder(
          itemCount: listCards.length,
          controller: _controller,
          //onPageChanged: (int index) => setState(() => _index = index),
          itemBuilder: (_, i) {
            if(i == currentPage){
              //_opacity = 1;
              return Transform.scale(
                  scale: 1,
                  child: listCards[i]
              );
            }else if(i < currentPage){
              //_opacity = max(1 - (currentPage - i), 0.8);
              return Transform.scale(
                  scale: max(1 - (currentPage - i), 0.8),
                  child: listCards[i]
              );
            }else{
              //_opacity = max(1 - (i - currentPage), 0.8);
              return Transform.scale(
                  scale: max(1 - (i - currentPage), 0.8),
                  child: listCards[i]
              );
            }
          },
        ),
      ),
    );
  }


  /*
   i == _index ? 1 : 0.8,
   */
  /*ClipRect _card(String image){
    return ClipRect(
      child: Container(
        height: 450,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20) ),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(image)
            )
        ),
      ),
    );
  }*/

  /*Transform _transform(){
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
                            image: AssetImage(directoryImage)
                        )
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
                  )
              )
            ]
        ),
      ),
    );
  }*/
}

class Cards extends StatelessWidget {
  late String directoryImage;
  late String textCard;
  late dynamic buttonCard;
  Cards({Key? key, required String directory, required String text, required button}) : super(key: key){
    directoryImage = directory;
    textCard = text;
    buttonCard = button;
  }


  @override
  Widget build(BuildContext context) {

    return Container(
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
                          image: AssetImage(directoryImage)
                      )
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
            Text(textCard),
            const SizedBox(
              height: 5,
            ),
            Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: buttonCard,
                )
            )
          ]
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

