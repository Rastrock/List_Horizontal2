import 'dart:math';

import 'package:flutter/material.dart';
class ListWheelHorizontal extends StatefulWidget {
  const ListWheelHorizontal({Key? key}) : super(key: key);

  @override
  State<ListWheelHorizontal> createState() => _ListWheelState();
}

class _ListWheelState extends State<ListWheelHorizontal> {

  final _controller = PageController(viewportFraction: 0.5);
  double _currentPage = 0.0;

  void _listener(){
    setState(() {
      _currentPage = _controller.page!;
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

  @override
  Widget build(BuildContext context) {

    double _opty;

    List<String> text =[
      "Name cat 1",
      "Name cat 2",
      "Name cat 3",
      "Name cat 4",
      "Name cat 5",
      "Name cat? 6",
    ];

    List<String> image = [
      "images/cat1.jpg",
      "images/cat2.jpg",
      "images/cat3.jpg",
      "images/cat4.jpg",
      "images/cat5.jpg",
      "images/pajaro.jpg"
    ];

    return Center(
      child: SizedBox(
        height: 500, // card height
        child: PageView.builder(
          itemCount: image.length,
          controller: _controller,
          itemBuilder: (_,i) {
            if(i == _currentPage){
              _opty =1;
              return Transform.scale(
                scale: 1.1,
                child: _pageimages(image[i],text[i], _opty),
              );
            }
            else if(i < _currentPage){
              _opty = max(1 - (_currentPage - i), 0.5);
              return Transform.scale(
                scale: max(1.1 - (_currentPage - i), 0.8),
                child: _pageimages(image[i], text[i], _opty),
              );
            }
            else {
              _opty = max(1 - ( i - _currentPage), 0.5);
              return Transform.scale(
                scale: max(1.1 - (i - _currentPage), 0.8),
                child: _pageimages(image[i],text[i], _opty),
              );
            }
          }
        ),
      ),
    );
  }
}

_pageimages(String image, String text, double opty){
  return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0) ,
        child:  Material(
          elevation: 10,
          shadowColor: Colors.black,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
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

              ],
            ),
          ),
    )
  );
}




