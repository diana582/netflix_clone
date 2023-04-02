import 'package:flutter/material.dart ';
class VideoListItem
 extends StatelessWidget {
  final int index;
  const VideoListItem
  ({super.key,
  required this.index
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 30,
                  child: IconButton(onPressed: (){
                        
                  }, icon: Icon(Icons.volume_mute),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}