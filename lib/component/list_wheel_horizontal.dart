import 'dart:math';

import 'package:flutter/material.dart';
import 'package:list_element/component/custom_button.dart';

class ListWheelHorizontal extends StatefulWidget{
  late double? heightCard;
  late List<Cards> listCards;
  ListWheelHorizontal({
    Key? key,
    required double? height,
    required List<Cards> cards,
  }) : super(key: key){
    heightCard = height;
    listCards = cards;
  }


  @override
  State<ListWheelHorizontal> createState() => _ListWheelState(heightCard, listCards);

}

class _ListWheelState extends State<ListWheelHorizontal> {
  late double? heightCard;
  late List<Cards> listCards;
  _ListWheelState(double? height, List<Cards> cards){
    listCards = cards;
    if(height != null){
      heightCard = height;
    }
    else{
      heightCard = 400;
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
    double? opacity;
    return Center(
      child: Container(
        height: heightCard, // card height
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: PageView.builder(
            itemCount: listCards.length,
            controller: _controller,
            itemBuilder: (_, i) {
              if(i == currentPage){
                opacity = 1;
                return Transform.scale(
                    scale: 1,
                    child: cardBuilder(listCards[i].directoryImage, listCards[i].textCard, listCards[i].actionButton, opacity!)
                );
              }else if(i < currentPage){
                opacity = max(1 - (currentPage - i), 0.8);
                return Transform.scale(
                    scale: max(1 - (currentPage - i), 0.8),
                    child: cardBuilder(listCards[i].directoryImage, listCards[i].textCard, listCards[i].actionButton, opacity!)
                );
              }else{
                opacity = max(1 - (i - currentPage), 0.8);
                listCards[i].opacity = opacity!;
                return Transform.scale(
                    scale: max(1 - (i - currentPage), 0.8),
                    child: cardBuilder(listCards[i].directoryImage, listCards[i].textCard, listCards[i].actionButton, opacity!)
                );
              }
            },
          ),
        ),
      ),
    );
  }

  Widget cardBuilder(String directoryImage, String textCard, Function()? actionButton, double opacity){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                spreadRadius: 5,
                offset: Offset(4, 4)
            )
          ]
        ),
        child: Column(
            children:[
              Flexible(
                flex: 7,
                child: ClipRect(
                  child: Container(
                    height: 450,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20) ),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(directoryImage),
                          opacity: opacity,
                        )
                    ),
                  ),
                ),
              ),
              const Flexible(
                flex: 1,
                child: SizedBox(
                  height: 10,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20, top: 5),child: Text(textCard)),
              const SizedBox(
                height: 5,
              ),
              Flexible(
                  flex: 2,
                  child: CustomButton(
                    onTap: (){
                      actionButton;
                    },
                    text: 'Ver bingos',
                    textColor: Colors.white,
                    backgroundColor: Colors.green, fontSize: 20,)
              )
            ]
        ),
      ),
    );
  }

}

class Cards{
  late String directoryImage;
  late String textCard;
  late double opacity;
  late dynamic actionButton;

  Cards({
    Key? key,
    required String directory,
    required String text,
    required Function()? action}){
    directoryImage = directory;
    textCard = text;
    actionButton = action;
  }
}

