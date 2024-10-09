import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          builsSelectedLanguage("English"),
          SizedBox(
            height: 18,
          ),
          builsUnSelectedLanguage("عربي"),
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
