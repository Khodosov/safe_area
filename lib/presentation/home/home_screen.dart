import 'package:flutter/material.dart';
import 'package:safe_area/presentation/widgets/bottom_bar.dart';
import 'package:safe_area/presentation/widgets/tab_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: BottomBarWidget(),
          ),
          TabCard(
            
          ),
        ],
      ),
    );
  }
}
