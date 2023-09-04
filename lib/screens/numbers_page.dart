import 'package:flutter/material.dart';
import 'package:tuko_app/components/item.dart';
import 'package:tuko_app/models/numbers.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({Key? key}) : super(key: key);
  final List<Items> numbers = const [
    Items(
        sound: 'assets/sounds/numbers/number_one_sound.mp3',
        image: 'assets/images/numbers/1.png',
        jpName: '一 (Ichi)',
        enName: 'One'),
    Items(
        image: 'assets/images/numbers/2.png',
        jpName: '二 (Ni)',
        enName: 'Two',
        sound: 'assets/sounds/numbers/number_two_sound.mp3'),
    Items(
        image: 'assets/images/numbers/3.png',
        jpName: '三 (San)',
        enName: 'Three',
        sound: 'assets/sounds/numbers/number_three_sound.mp3'),
    Items(
        image: 'assets/images/numbers/4.png',
        jpName: '四 (Yon)',
        enName: 'Four',
        sound: 'assets/sounds/numbers/number_four_sound.mp3'),
    Items(
        image: 'assets/images/numbers/5.png',
        jpName: '五 (Go)',
        enName: 'Five',
        sound: 'assets/sounds/numbers/number_five_sound.mp3'),
    Items(
        image: 'assets/images/numbers/6.png',
        jpName: '六 (Ruko)',
        enName: 'Six',
        sound: 'assets/sounds/numbers/number_six_sound.mp3'),
    Items(
        image: 'assets/images/numbers/7.png',
        jpName: '七 (Nana)',
        enName: 'Seven',
        sound: 'assets/sounds/numbers/number_seven_sound.mp3'),
    Items(
        image: 'assets/images/numbers/8.png',
        jpName: '八 (Hachi)',
        enName: 'Eight',
        sound: 'assets/sounds/numbers/number_eight_sound.mp3'),
    Items(
        image: 'assets/images/numbers/9.png',
        jpName: '九 (kyū)',
        enName: 'Nine',
        sound: 'assets/sounds/numbers/number_nine_sound.mp3'),
    Items(
        image: 'assets/images/numbers/0.png',
        jpName: 'ゼロ (Zero)',
        enName: 'Zero',
        sound: 'assets/sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FC),
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Colors.green,
        elevation: 10,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, Index) {
          return ListItems(number: numbers[Index], color: Colors.green,);
        },
      ),
    );
  }
}
