import 'package:flutter/material.dart';
import 'package:netflix_2/core/constants.dart';
import 'package:netflix_2/presentation/widgets/main_title.dart';

import '../widgets/main_card.dart';
import '../widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const MainTitleCard()
    );
  }
}

