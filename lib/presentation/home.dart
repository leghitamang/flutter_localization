import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:internationalization_app/presentation/components/language_changer.dart';
import 'package:internationalization_app/presentation/components/language_flag.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Localization'),
        actions: const [
          LanguageDropdown(),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const LanguageFlag(),
            const SizedBox(height: 10),
            Text(
              AppLocalizations.of(context)!.language,
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              AppLocalizations.of(context)!.hello('Leghi'),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
