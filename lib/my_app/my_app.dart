import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app_r/config/theme/my_theme.dart';
import 'package:islami_app_r/core/utils/routes_manager.dart';
import 'package:islami_app_r/presentation/home/home.dart';
import 'package:islami_app_r/presentation/home/tabs/hasith_tap/hadith_details/hadith_details.dart';
import 'package:islami_app_r/presentation/home/tabs/quran_tab/quran_details/quran_details_screen.dart';
import 'package:islami_app_r/presentation/splash/splash_screen.dart';
import 'package:islami_app_r/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line

        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      locale: Locale(provider.carrenLanguage),
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManager.quranDetailsRoutName: (_) => QuranDetailsScreen(),
        RoutesManager.hadithDetailsRoutName: (_) => HadithDetails(),
        RoutesManager.routeName: (_) => HomeScreen(),
        RoutesManager.splashName: (_) => SplashScreen(),
      },
      initialRoute: RoutesManager.splashName,
      darkTheme: MyTheme.DarkTheme,
      theme: MyTheme.LigthTheme,
      themeMode: provider.carrenTheme,
    );
  }
}
