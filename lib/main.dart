import 'package:flutter/material.dart';
import 'package:text_game/home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adventure Story App',
      theme: ThemeData(primarySwatch: Colors.blue),
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('tr', 'TR'),
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: home(),
    );
  }
}
