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
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "Card ${i + 1}",
                    style: TextStyle(fontSize: 32),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}



