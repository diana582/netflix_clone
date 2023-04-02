import 'package:flutter/material.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text("Realeased in Past Year",
              
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
          return Container(
    width: 150,
    height: 250,
    
    decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(10),image: DecorationImage(
      
      image: NetworkImage('https://m.media-amazon.com/images/M/MV5BMTU1MjcyMGUtODI3ZS00NTc4LWExNjgtY2ZjZGJlZmUyMmFhXkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_FMjpg_UX1000_.jpg'),),),
    );
        } 

        ),
      
    ),
    )
    
      ],
    );
  }
}

