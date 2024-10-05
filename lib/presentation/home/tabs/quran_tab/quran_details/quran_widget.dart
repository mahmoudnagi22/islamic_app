import 'package:flutter/material.dart';
import 'package:islami_app_r/core/utils/colors_manager.dart';

class QuranWidget extends StatelessWidget {
  String verseItem;
  QuranWidget({super.key, required this.verseItem});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 8,
          ),
          alignment: Alignment.center,
          child: Text(
            verseItem,
            style: Theme.of(context).textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
