import 'package:flutter/material.dart';
import 'package:internationalization_app/l10n/l10n.dart';

class LanguageFlag extends StatelessWidget {
  const LanguageFlag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final flag = L10n.getFlag(locale.languageCode);
    return Center(
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 70,
        child: Text(
          flag,
          style: const TextStyle(
            fontSize: 60,
          ),
        ),
      ),
    );
  }
}
