import 'package:flutter/material.dart';
import '../components/item.dart';
import '../models/numbers.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);
  final List<Items> familyMembers = const [
    Items(
        sound: 'assets/sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: '娘 (Musume)',
        enName: 'Daughter'),
    Items(
        image: 'assets/images/family_members/family_father.png',
        jpName: '父 (Chichi)',
        enName: 'Father',
        sound: 'assets/sounds/family_members/father.wav'),
    Items(
        image: 'assets/images/family_members/family_mother.png',
        jpName: '母 (Haha)',
        enName: 'Mother',
        sound: 'assets/sounds/family_members/mother.wav'),
    Items(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: '祖父 (Sofu)',
        enName: 'Grandfather',
        sound: 'assets/sounds/family_members/grand father.wav'),
    Items(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: '祖母 (Sobo)',
        enName: 'Grandmother',
        sound: 'assets/sounds/family_members/grand mother.wav'),
    Items(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: '兄 (Ani)',
        enName: 'Younger Brother',
        sound: 'assets/sounds/family_members/older bother.wav'),
    Items(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: '姉 (Ane)',
        enName: 'Older Sister',
        sound: 'assets/sounds/family_members/older sister.wav'),
    Items(
        image: 'assets/images/family_members/family_son.png',
        jpName: '息子 (Musuko)',
        enName: 'Son',
        sound: 'assets/sounds/family_members/son.wav'),
    Items(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: '弟 (Otouto)',
        enName: 'Younger Brother',
        sound: 'assets/sounds/family_members/younger brohter.wav'),
    Items(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: '妹 (Imouto)',
        enName: 'Younger Sister',
        sound: 'assets/sounds/family_members/younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FC),
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Colors.red,
        elevation: 10,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, Index) {
          return ListItems(number: familyMembers[Index], color: Colors.red,);
        },
      ),
    );
  }
}
