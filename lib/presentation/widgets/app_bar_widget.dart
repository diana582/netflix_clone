import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:netflix_2/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Downloads',style: TextStyle(
          fontSize: 30,
        fontWeight: FontWeight.bold),),
        Spacer(),
        Icon(Icons.cast,
        size: 30,
        color: Colors.white,),
        kwidth,
        Container(
          width: 30,
          height: 30,
          color: Colors.blue,
        ),
        kwidth,
      ],
    );
  }
}