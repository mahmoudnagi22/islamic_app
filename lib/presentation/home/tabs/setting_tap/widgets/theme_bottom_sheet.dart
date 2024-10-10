import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_r/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                provider.changeAppTheme(ThemeMode.light);
              },
              child: provider.carrenTheme == ThemeMode.light
                  ? builsSelectedItem(AppLocalizations.of(context)!.light)
                  : builsUnSelectedItem(AppLocalizations.of(context)!.light)),
          SizedBox(
            height: 18,
          ),
          InkWell(
              onTap: () {
                provider.changeAppTheme(ThemeMode.dark);
              },
              child: provider.carrenTheme == ThemeMode.dark
                  ? builsSelectedItem(AppLocalizations.of(context)!.dark)
                  : builsUnSelectedItem(AppLocalizations.of(context)!.dark))
        ],
      ),
    );
  }

  Widget builsSelectedItem(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: Theme.of(context).textTheme.bodyMedium),
        Icon(
          Icons.check,
          size: 30,
          color: Theme.of(context).dividerColor,
        ),
      ],
    );
  }

  Widget builsUnSelectedItem(String text) {
    return Row(
      children: [
        Text(text,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  fontSize: 25,
                )),
      ],
    );
  }
}
