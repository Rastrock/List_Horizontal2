import 'dart:math';

import 'package:flutter/material.dart';
class ListWheelHorizontal extends StatefulWidget {
  late List<String> directoryImage;
  late List<String> textCard;
  late List<Widget> buttonCard;
  late double? heightCard;
  ListWheelHorizontal({
    Key? key,
    required double? height,
    required List<String> directory,
    required List<String> text,
    required List<Widget> button
  }) : super(key: key){

    directoryImage = directory;
    textCard = text;
    buttonCard = button;
    heightCard = height;
}

  @override
  State<ListWheelHorizontal> createState() => _ListWheelState(heightCard, directoryImage, textCard, buttonCard);
}

class _ListWheelState extends State<ListWheelHorizontal> {
  late double? heightCard;
  late List<String> directoryCard;
  late List<String> textCard;
  late List<Widget> buttonCard;
  _ListWheelState(
      double? height,
      List<String> directory,
      List<String> text,
      List<Widget> button){
    heightCard = height;
    directoryCard = directory;
    textCard = text;
    buttonCard = button;

  }
  final _controller = PageController(viewportFraction: 0.5);
  double _currentPage = 0.0;

  void _listener() {
    setState(() {
      _currentPage = _controller.page!;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(_listener);
  }

  @override
  void dispose() {
    _controller.removeListener(_listener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _opty;
    return Center(
      child: SizedBox(
        height: heightCard, // card height
        child: PageView.builder(
            itemCount: directoryCard.length,
            controller: _controller,
            itemBuilder: (_, i) {
              if (i == _currentPage) {
                _opty = 1;
                return Transform.scale(
                  scale: 1.1,
                  child: _pageimages(directoryCard[i], textCard[i], buttonCard[i], _opty),
                );
              }
              else if (i < _currentPage) {
                _opty = max(1 - (_currentPage - i), 0.5);
                return Transform.scale(
                  scale: max(1.1 - (_currentPage - i), 0.8),
                  child: _pageimages(directoryCard[i], textCard[i], buttonCard[i], _opty),
                );
              }
              else {
                _opty = max(1 - (i - _currentPage), 0.5);
                return Transform.scale(
                  scale: max(1.1 - (i - _currentPage), 0.8),
                  child: _pageimages(directoryCard[i], textCard[i], buttonCard[i], _opty),
                );
              }
            }
        ),
      ),
    );
  }


  _pageimages(String image, String text, Widget button,  double opty) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
        child: Material(
          elevation: 10,
          shadowColor: Colors.black,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: <Widget>[
                ClipRRect(
                  child: Container(
                    height: 180,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                          opacity: opty,
                        )
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                Text(text),
                const SizedBox(height: 20),
                button
              ],
            ),
          ),
        )
    );
  }
}




