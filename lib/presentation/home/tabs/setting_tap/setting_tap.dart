import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_r/presentation/home/tabs/setting_tap/widgets/language_bottom_sheet.dart';
import 'package:islami_app_r/presentation/home/tabs/setting_tap/widgets/theme_bottom_sheet.dart';
import 'package:islami_app_r/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingTap extends StatelessWidget {
  const SettingTap({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(AppLocalizations.of(context)!.theme,
                style: Theme.of(context).textTheme.labelSmall),
            SizedBox(height: 4),
            InkWell(
              onTap: () {
                showThemeBottomSheet(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  provider.carrenTheme == ThemeMode.light
                      ? AppLocalizations.of(context)!.light
                      : AppLocalizations.of(context)!.dark,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontSize: 14,
                      ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(AppLocalizations.of(context)!.english,
                style: Theme.of(context).textTheme.labelSmall),
            SizedBox(height: 4),
            InkWell(
              onTap: () {
                showLanguageBottomSheet(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  provider.isAppLanguageEn()
                      ? AppLocalizations.of(context)!.english
                      : AppLocalizations.of(context)!.arabic,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontSize: 14,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (context) => ThemeBottomSheet());
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (context) => LanguageBottomSheet());
  }
}
