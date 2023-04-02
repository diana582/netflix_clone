import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_2/core/colors/colors.dart';
import 'package:netflix_2/presentation/main_page/widgets/screen_main_page.dart';


// Your code here

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        primaryColor: Colors.blue,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        backgroundColor: Colors.black,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        )
      ),
      home:  ScreenMainPage(),
    );
  }
}
