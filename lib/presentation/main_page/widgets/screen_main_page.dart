import 'package:flutter/material.dart';
import 'package:netflix_2/presentation/downloads/widgets/screen_downloads.dart';
import 'package:netflix_2/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix_2/presentation/home/screen_home.dart';
import 'package:netflix_2/presentation/new_and_hot/screen_new_and_hot.dart';

import '../../../core/colors/colors.dart';
import '../../search/screen_search.dart';
import 'bottom_nav.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({super.key});
final _pages =[
ScreenHome(),
ScreenNewAndHot(),
ScreenFastLaugh(),
ScreenSearch(),
ScreenDownloads()

];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: indexChangeNotifier, 
        builder: (context,int index,_){
         return _pages[index];
        },
         ),
      ),
          bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}