import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../../../provider/settings_provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
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
                provider.changeAppLanguage("en");
              },
              child: provider.isAppLanguageEn()
                  ? builsSelectedLanguage(AppLocalizations.of(context)!.english)
                  : builsUnSelectedLanguage(
                      AppLocalizations.of(context)!.english)),
          SizedBox(
            height: 18,
          ),
          InkWell(
              onTap: () {
                provider.changeAppLanguage("ar");
              },
              child: provider.isAppLanguageAr()
                  ? builsSelectedLanguage(AppLocalizations.of(context)!.arabic)
                  : builsUnSelectedLanguage(
                      AppLocalizations.of(context)!.arabic)),
        ],
      ),
    );
  }

  Widget builsSelectedLanguage(String text) {
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

  Widget builsUnSelectedLanguage(String text) {
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
