import 'package:flutter/material.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          builsSelectedItem("Light"),
          SizedBox(
            height: 18,
          ),
          builsUnSelectedItem("Dark")
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
