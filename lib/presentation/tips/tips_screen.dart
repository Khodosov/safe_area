import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_area/application/preferences/prefs_bloc.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Healts tips'),
      ),
      body: PageView.builder(
        itemBuilder: (context, index) {
          return Card();
        },
      ),
    );
  }
}
