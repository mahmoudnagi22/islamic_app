import 'package:flutter/material.dart';
import 'package:islami_app_r/core/utils/routes_manager.dart';
import 'package:islami_app_r/presentation/home/tabs/hasith_tap/hadith_tap.dart';

class Hadithtitelwidget extends StatelessWidget {
  Hadithtitelwidget({super.key, required this.hadith});
  HadithItem hadith;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutesManager.hadithDetailsRoutName,
          arguments: hadith,
        );
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(3),
        child: Text(
          hadith.titel,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
