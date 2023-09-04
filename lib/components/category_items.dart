
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.color, this.text, this.onTap}) ;
  String? text;
  Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0) ),
      elevation: 5,
      minWidth: 400,
      height: 65,
      color: color!,
      onPressed: onTap,
      child: Text(
        text!,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400, color: Colors.black38),
      ),
    );
  }
}

