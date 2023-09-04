import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:tuko_app/models/numbers.dart';

import '../models/phrase.dart';

class ListItems extends StatelessWidget {
  const ListItems({Key? key, required this.number, this.sound, required this.color}) : super(key: key);
  final String? sound;
  final Items number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 70,
      child: Row(
        children: [
          Container(
              width: 80,
              color: const Color(0xFFF7F9FC),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  number.image,
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(fontSize: 20, color: Colors.white ),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){

                try{
                  AssetsAudioPlayer.newPlayer().open(Audio(number.sound));
                  print('object');
                }catch (ex){
                  print(ex);
                }

            }, icon: const Icon(
              Icons.play_circle,
              size: 32,
              color: Colors.white,)
            ),
          ),
        ],
      ),
    );
  }
}

class PhraseItem extends StatelessWidget {
  const PhraseItem({Key? key, required this.color, this.sound, required this.phrase}) : super(key: key);
  final Color color;
  final String? sound;
  final Phrase phrase;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 70,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  phrase.jpName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  phrase.engName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){

              try{
                AssetsAudioPlayer.newPlayer().open(Audio(phrase.sound));
                print('object');
              }catch (ex){
                print(ex);
              }

            }, icon: const Icon(
              Icons.play_circle,
              size: 32,
              color: Colors.white,)
            ),
          ),
        ],
      ),
    );;
  }
}

