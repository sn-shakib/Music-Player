import 'dart:ffi';

import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  const CustomText({Key? key,
    required this.color, required this.text, required this.fontWeight, required this.fontsize, }) : super(key: key);
  final Color color;
  final String text;
  final FontWeight fontWeight;
  final double fontsize;
  @override
  Widget build(BuildContext context) {
    return  Text(text,
               style: TextStyle(
                 color: color,fontSize: fontsize,fontWeight: fontWeight,
               ),
    );
  }
}
