import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:safe_area/generated/locale_keys.g.dart';
import 'package:safe_area/presentation/tips/tips_card.dart';

class TipsContent extends StatelessWidget {
  const TipsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tips = [
      LocaleKeys.tips__distance_tip.tr(),
      LocaleKeys.tips__clean_hands.tr(),
      LocaleKeys.tips__wear_mask.tr(),
    ];
    final icons = [
      Icons.social_distance,
      Icons.soap,
      Icons.masks,
    ];
    return LayoutBuilder(builder: (context, constraints) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Text(
                LocaleKeys.healts_tips__header.tr(),
                style: const TextStyle(fontSize: 22),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: constraints.maxHeight - 80,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return TipCard(tip: tips[index], icon: icons[index]);
                },
              ),
            )
          ],
        ),
      );
    });
  }
}
