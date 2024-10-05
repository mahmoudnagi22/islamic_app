import 'package:flutter/material.dart';
import 'package:islami_app_r/core/utils/stringes_manager.dart';

class HadithHeadarName extends StatelessWidget {
  const HadithHeadarName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(color: Theme.of(context).primaryColor),
        ),
      ),
      child: Text(
        StringesManager.HadithTitel,
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }
}
