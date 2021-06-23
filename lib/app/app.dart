// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tepat_public_flutter/features/home/presentation/pages/home_page.dart';
import 'package:tepat_public_flutter/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var primaryColor = Colors.blue.shade600;

    return MaterialApp(
      theme: ThemeData(
        // accentColor: const Color(0xFF13B9FF),
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          // foregroundColor: Colors.white,
          backgroundColor: Colors.white,
          actionsIconTheme: IconThemeData(
            color: primaryColor,
          ),
          iconTheme: IconThemeData(
            color: primaryColor,
          ),
        ),
        primarySwatch: Colors.grey,
        primaryTextTheme: TextTheme(
          headline6: TextStyle(color: primaryColor),
        ),
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const HomePage(),
    );
  }
}
