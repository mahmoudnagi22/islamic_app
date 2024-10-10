import 'package:flutter/material.dart';
import 'package:islami_app_r/presentation/home/tabs/hasith_tap/hadith_tap.dart';
import 'package:provider/provider.dart';

import '../../../../../provider/settings_provider.dart';

class HadithDetails extends StatelessWidget {
  const HadithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);

    HadithItem hadith =
        ModalRoute.of(context)?.settings.arguments as HadithItem;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(provider.getBackgroundImage()), fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadith.titel),
        ),
        body: Card(
          child: Container(
              padding: EdgeInsets.all(12),
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Text(
                  hadith.content,
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              )),
        ),
      ),
    );
  }
}
