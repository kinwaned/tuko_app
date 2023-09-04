import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/numbers.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({Key? key}) : super(key: key);

  final List<Items> colors = const [
    Items(
        sound: 'assets/sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: '黒 (Kuro)',
        enName: 'Black'),
    Items(
        image: 'assets/images/colors/color_gray.png',
        jpName: '灰色 (Hai iro)',
        enName: 'Gray',
        sound: 'assets/sounds/colors/gray.wav'),
    Items(
        image: 'assets/images/colors/color_green.png',
        jpName: '緑 (Midori)',
        enName: 'Green',
        sound: 'assets/sounds/colors/green.wav'),
    Items(
        image: 'assets/images/colors/color_red.png',
        jpName: '赤 (Aka)',
        enName: 'Red',
        sound: 'assets/sounds/colors/red.wav'),
    Items(
        image: 'assets/images/colors/color_white.png',
        jpName: '白 (Shiro)',
        enName: 'White',
        sound: 'assets/sounds/colors/white.wav'),
    Items(
        image: 'assets/images/colors/yellow.png',
        jpName: '黄色 (Ki iro)',
        enName: 'Yellow',
        sound: 'assets/sounds/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FC),
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Colors.amber,
        elevation: 10,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, Index) {
          return ListItems(number: colors[Index], color: Colors.amber,);
        },
      ),
    );
  }
}
