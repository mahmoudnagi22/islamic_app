import 'package:flutter/material.dart';
import 'package:islami_app_r/core/utils/routes_manager.dart';

class QuranTitelWidget extends StatelessWidget {
  QuranTitelWidget(
      {super.key,
      required this.suraTitle,
      required this.numOfVerses,
      required this.index});
  String suraTitle;
  String numOfVerses;
  int index;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, RoutesManager.quranDetailsRoutName,
              arguments: SuraArgs(suraName: suraTitle, index: index));
        },
        child: Container(
          alignment: Alignment.center,
          child: Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  suraTitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              VerticalDivider(
                color: Theme.of(context).dividerColor,
                width: 3,
                thickness: 3,
              ),
              Expanded(
                flex: 2,
                child: Text(
                  numOfVerses,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SuraArgs {
  String suraName;
  int index;
  SuraArgs({required this.suraName, required this.index});
}
