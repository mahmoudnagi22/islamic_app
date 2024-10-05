import 'package:flutter/material.dart';
import 'package:islami_app_r/presentation/home/tabs/setting_tap/widgets/language_bottom_sheet.dart';
import 'package:islami_app_r/presentation/home/tabs/setting_tap/widgets/theme_bottom_sheet.dart';

class SettingTap extends StatelessWidget {
  const SettingTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Theme", style: Theme.of(context).textTheme.labelSmall),
            SizedBox(height: 4),
            InkWell(
              onTap: () {
                showThemeBottomSheet(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text("Light",
                    style: Theme.of(context).textTheme.displaySmall),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text("Language", style: Theme.of(context).textTheme.labelSmall),
            SizedBox(height: 4),
            InkWell(
              onTap: () {
                showLanguageBottomSheet(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text("English",
                    style: Theme.of(context).textTheme.displaySmall),
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
