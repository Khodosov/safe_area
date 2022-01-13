import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:safe_area/generated/locale_keys.g.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(LocaleKeys.healts_tips__header.tr()),
      ),
      body: PageView.builder(
        itemBuilder: (context, index) {
          return const Card();
        },
      ),
    );
  }
}
