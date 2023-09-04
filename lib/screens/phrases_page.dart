import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/numbers.dart';
import '../models/phrase.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({Key? key}) : super(key: key);
  final List<Phrase> phrases = [
    Phrase(jpName: 'Kimasu ka?', engName: 'Are you coming?', sound: 'assets/sounds/phrases/are_you_coming.wav'),
    Phrase(jpName: 'Go kibun wa ikagadesu ka?', engName: 'How are you feeling?', sound: 'assets/sounds/phrases/how_are_you_feeling.wav'),
    Phrase(jpName: 'Watashi wa anime ga daisukidesu?', engName: 'I love anime?', sound: 'assets/sounds/phrases/i_love_anime.wav'),
    Phrase(jpName: 'Watashi wa puroguramingu ga sukidesu ka?', engName: 'I love programming?', sound: 'assets/sounds/phrases/i_love_programming.wav'),
    Phrase(jpName: 'Puroguramingu wa kantandesu', engName: 'Programming is easy', sound: 'assets/sounds/phrases/programming_is_easy.wav'),
    Phrase(jpName: 'Namae wa nandesu ka?', engName: 'What is your name?', sound: 'assets/sounds/phrases/what_is_your_name.wav'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FC),
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Colors.lightBlue,
        elevation: 10,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, Index) {
          return PhraseItem(phrase: phrases[Index],color: Colors.lightBlue, );
        },
      ),
    );
  }
}