import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app_r/config/theme/my_theme.dart';
import 'package:islami_app_r/core/utils/routes_manager.dart';
import 'package:islami_app_r/presentation/home/home.dart';
import 'package:islami_app_r/presentation/home/tabs/hasith_tap/hadith_details/hadith_details.dart';
import 'package:islami_app_r/presentation/home/tabs/quran_tab/quran_details/quran_details_screen.dart';
import 'package:islami_app_r/presentation/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
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
      themeMode: ThemeMode.dark,
    );
  }
}
