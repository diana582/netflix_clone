import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_2/core/constants.dart';
import 'package:netflix_2/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
   ScreenDownloads({super.key});
  final List imageList =[
  'https://m.media-amazon.com/images/M/MV5BNThlNGZjZDQtYzJjMi00MzM4LWFkNjctNDMwZmFjNWJkM2I4XkEyXkFqcGdeQXVyMTUzNTgzNzM0._V1_FMjpg_UX1000_.jpg',
  'https://m.media-amazon.com/images/M/MV5BMTU1MjcyMGUtODI3ZS00NTc4LWExNjgtY2ZjZGJlZmUyMmFhXkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_FMjpg_UX1000_.jpg',
  'https://m.media-amazon.com/images/M/MV5BNTZiN2Y3NTItZDJiNS00Y2FhLWFlZjAtOGJkNDMzZjlmNjE3XkEyXkFqcGdeQXVyMTE4OTYyNjkx._V1_.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: "Downloads",)
        ),
        
      body: ListView(
        children: [
          const _SmartDownloads(),
          Text('Introducing Downloads for u',style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          
        Text('We will download a personalized selection of\n movies and shows for you,so there is\n always something to watch in your\n device',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.grey,
        fontSize: 16)
        ,),

        SizedBox(
          height: size.height,
          width: size.width,
          
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.5),
                  radius: size.width*0.37,
                ),
              ),
              DownloadsImageWidget(
                imageList: imageList[0],
              margin: EdgeInsets.only(left: 130,bottom: 50),
              angle: 20,
              size: Size(size.width*1.2,size.width*0.5),),
              DownloadsImageWidget(
                imageList: imageList[1],
              margin: EdgeInsets.only(right: 130,bottom: 50),
              angle: -20,
              size: Size(size.width*1,size.width*0.5),),
              DownloadsImageWidget(
                imageList: imageList[2],
              margin: EdgeInsets.only(bottom: 10),
              size: Size(size.width*1.2,size.width*0.5),),
            ],
          ),
        ),
          MaterialButton(
             color: Colors.blue,
             onPressed: 
          (){

          },child: Text('Set  up',style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold),
            ),
            ),
            kwidth,
            MaterialButton(
             color: Colors.white,
             onPressed: 
          (){

          },child: Text('See what you can download',style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold),
            ),
            ),
        ],
      ),
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        Icon(Icons.settings,
        color: Colors.white,),
        kwidth,
        Text('Smart Downloads')
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.size,
    required this.imageList,
    this.angle =0,
    required this.margin
  });

  
  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
   // final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle*pi/180,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: margin,
          width: size.width*0.4,
          height: size.width*0.6,
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:DecorationImage(
              image: NetworkImage(imageList,))),
        ),
      ),
    );
  }
}