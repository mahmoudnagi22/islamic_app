import 'package:flutter/material.dart';
import 'package:islami_app_r/core/utils/stringes_manager.dart';

class QuranTitelListWidget extends StatelessWidget {
  const QuranTitelListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        decoration: BoxDecoration(
          border: Border.symmetric(
            horizontal: BorderSide(
              color: Theme.of(context).dividerColor,
              width: 3,
            ),
          ),
        ),
        alignment: Alignment.center,
        child: Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                StringesManager.ChapterName,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Expanded(
              child: VerticalDivider(
                color: Theme.of(context).dividerColor,
                width: 3,
                thickness: 3,
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                StringesManager.VersesOfNumber,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
