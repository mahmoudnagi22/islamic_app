import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
          horizontal: BorderSide(color: Theme.of(context).dividerColor),
        ),
      ),
      child: Text(
        AppLocalizations.of(context)!.ahadith,
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }
}
