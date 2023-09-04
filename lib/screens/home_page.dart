import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:tuko_app/screens/color_page.dart';
import 'package:tuko_app/screens/family_memebers_page.dart';
import 'package:tuko_app/screens/numbers_page.dart';
import 'package:tuko_app/screens/phrases_page.dart';

import '../components/category_items.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FC),
      appBar: AppBar(
        backgroundColor: Color(0xFFF7F9FC),
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            'Tuko',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Quicksand',
                fontSize: 26,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions:  [
          Padding(
            padding:  EdgeInsets.only(right: 10,top: 25),
            child: IconButton(onPressed: (){}, icon: Icon(
              Icons.more_vert,
              color: Colors.black,

            ),)
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 200,top: 30),
            child: Text('Categories',style: TextStyle(fontSize: 40, fontFamily: 'Kinsans Bold', )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: AnimSearchBar(width: 390, textController: TextEditingController(), onSuffixTap: (){
              setState(){
                textController.clear();
              };
            }, onSubmitted: (String ) {  },),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: Column(
              children: [
                Category(
                  text: 'Numbers',
                  color: Colors.green,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return NumbersPage();
                    }));
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                Category(
                  text: 'Family Members',
                  color: Colors.red,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return FamilyMembersPage();
                    }));
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                Category(
                  text: 'Colors',
                  color: Colors.amber,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return ColorPage();
                    }));
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                Category(
                  text: 'Phrases',
                  color: Colors.lightBlue,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return PhrasesPage();
                    }));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
