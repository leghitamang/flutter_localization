import 'package:flutter/material.dart';
import 'package:internationalization_app/l10n/l10n.dart';
import 'package:internationalization_app/provider/locale_provider.dart';
import 'package:provider/provider.dart';

class LanguageDropdown extends StatelessWidget {
  const LanguageDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context);
    final locale = provider.locale ?? const Locale('en');
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: locale,
        icon: Container(width: 12),
        items: L10n.all.map(
          (locale) {
            final flag = L10n.getFlag(locale.languageCode);
            return DropdownMenuItem(
              child: Center(
                child: Text(
                  flag,
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              value: locale,
              onTap: () {
                final provider =
                    Provider.of<LocaleProvider>(context, listen: false);

                provider.setLocale(locale);
              },
            );
          },
        ).toList(),
        onChanged: (_) {},
      ),
    );
  }
}
