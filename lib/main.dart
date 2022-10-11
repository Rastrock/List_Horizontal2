import 'package:flutter/material.dart';
import 'package:list_element/component/list_wheel_horizontal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //List<Cards> listCards = [];
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(),
        body: ListWheelHorizontal(height: null, cards: [
          Cards(
            directory: 'assets/74297472_p0_master1200.jpg',
            text: 'siiiiii',
            action: (){},
          ),
          Cards(
            directory: 'assets/74297472_p0_master1200.jpg',
            text: 'Nononono',
            action: (){},
          ),
          Cards(
            directory: 'assets/74297472_p0_master1200.jpg',
            text: 'ssdklvsdv',
            action: (){},
          ),
          Cards(
            directory: 'assets/74297472_p0_master1200.jpg',
            text: 'saaaaaaaaa',
            action: (){},
          ),
          Cards(
            directory: 'assets/74297472_p0_master1200.jpg',
            text: 'siiiiii',
            action: (){},
          )
        ]),
      ),
    );
  }
}