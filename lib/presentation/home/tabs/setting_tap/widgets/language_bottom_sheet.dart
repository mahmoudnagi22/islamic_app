import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("English", style: Theme.of(context).textTheme.bodyMedium),
              Icon(
                Icons.check,
                size: 30,
                color: Theme.of(context).dividerColor,
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Text("Arabic",
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontSize: 25,
                  )),
        ],
      ),
    );
  }
}
