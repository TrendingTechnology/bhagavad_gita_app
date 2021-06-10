import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screens/MyHomePage.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.orange,
          accentColor: Colors.amber,
          fontFamily: GoogleFonts.hind().fontFamily,
        ),
        dark: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.orange,
          accentColor: Colors.amber,
          fontFamily: GoogleFonts.hind().fontFamily,
        ),
        initial: AdaptiveThemeMode.light,
        builder: (theme, darkTheme) => MaterialApp(
              title: 'Gita',
              debugShowCheckedModeBanner: false,
              theme: theme,
              darkTheme: darkTheme,
              home: MyHomePage(),
            ));
  }
}
