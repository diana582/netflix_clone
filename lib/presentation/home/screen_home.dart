import 'package:flutter/material.dart';
import 'package:netflix_2/core/constants.dart';
import 'package:netflix_2/presentation/widgets/main_title.dart';

import 'package:netflix_2/presentation/widgets/main_card.dart';
import 'package:netflix_2/presentation/widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.all(10),
        
        child: SingleChildScrollView(
          child: Column(
            children: [
              MainTitleCard(title: 'Released in Past Year',),
               MainTitleCard(title: 'Trending Now',),
               Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text('Top 10 TV Shows in India',
              
              style:  TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
            ),
        ),
    SizedBox(
    height: 10,
    ),
    LimitedBox(
    maxHeight: 200,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: 
        List.generate(10, (index) {
          return Column(
            children: [
              Row(
                children: [
                  SizedBox(
               width: 40,
               height: 150,
                  ),
                  Container(
    width: 150,
    height: 200,
    
    decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(10),image: DecorationImage(
      
      image: NetworkImage('https://m.media-amazon.com/images/M/MV5BNThlNGZjZDQtYzJjMi00MzM4LWFkNjctNDMwZmFjNWJkM2I4XkEyXkFqcGdeQXVyMTUzNTgzNzM0._V1_FMjpg_UX1000_.jpg'),),),
    ),
                ],
              ),
            ],
          );
        } 

        ),
      
    ),
    )
    
      ],
    ),
               MainTitleCard(title: 'Tense Dramas',),
               MainTitleCard(title: 'South Indian Cinema',),
        
            ],
          ),
        ),
      )
    );
  }
}

