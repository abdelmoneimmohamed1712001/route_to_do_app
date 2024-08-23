import 'package:flutter/material.dart';
import 'package:todo_app_c11_friday/core/styles/app_theme.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  String selectedTheme = 'Light';
  String selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Theme',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: AppTheme.primaryColor, width: 3)),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    selectedTheme,
                    style: Theme.of(context).textTheme.labelSmall,
                  )),
                  DropdownButton<String>(
                    items: <String>['Light', 'Dark'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newTheme) {
                      selectedTheme = newTheme!;
                      setState(() {});
                      print(newTheme);
                    },
                  )
                ],
              )),
          Text(
            'Language',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: AppTheme.primaryColor, width: 3)),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                        selectedLanguage,
                        style: Theme.of(context).textTheme.labelSmall,
                      )),
                  DropdownButton<String>(
                    items: <String>['English', 'Arabic'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newLang) {
                      selectedLanguage = newLang!;
                      setState(() {});
                      print(newLang);
                    },
                  )
                ],
              )),
        ],
      ),
    );
  }
}
